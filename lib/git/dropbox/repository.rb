class Repository

  DROPBOX_GIT_CMD = File.join(File.dirname(__FILE__), "git-dropbox-org.sh")

  def initialize(config)
    @config = config
  end

  def sync(dir)
    puts "About to sync #{dir}"
    system DROPBOX_GIT_CMD
  end

end