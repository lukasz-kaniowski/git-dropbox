require "thor"

module Git
  module Dropbox
    class CLI < Thor

      DROPBOX_GIT_CMD = File.join(File.dirname(__FILE__), "git-dropbox-org.sh")

      desc 'sync', 'Syncs current git repository to dropbox folder'

      def sync
        system DROPBOX_GIT_CMD
      end

    end
  end
end

#Git::Dropbox::CLI.start


