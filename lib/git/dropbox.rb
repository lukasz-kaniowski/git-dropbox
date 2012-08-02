module Git
  module Dropbox
    require 'git/dropbox/version'
    autoload :Repository, 'git/dropbox/repository'
    autoload :CLI, 'git/dropbox/cli'
    autoload :Config, 'git/dropbox/config'
  end
end

