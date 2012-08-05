class Repository

  DROPBOX_GIT_CMD = File.join(File.dirname(__FILE__), "git-dropbox-org.sh")

  def initialize(config)
    @config = config
  end

  def sync(repo, add_repo_to_list=true)
    system "cd #{repo}; #{DROPBOX_GIT_CMD}"
    if add_repo_to_list
      @config['repositories'] ||= []
      @config['repositories'] << repo
      @config['repositories'].uniq!
      @config.save
    end
  end


end