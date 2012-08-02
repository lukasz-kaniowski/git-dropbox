class Repository

  DROPBOX_GIT_CMD = File.join(File.dirname(__FILE__), "git-dropbox-org.sh")

  def initialize(config)
    @config = config
  end

  def sync(repo)
    puts "About to sync #{repo}"
    system DROPBOX_GIT_CMD
    @config['repositories'] ||= []
    @config['repositories'] << repo
    @config['repositories'].uniq!
    @config.save
  end

end