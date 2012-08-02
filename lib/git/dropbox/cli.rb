require "thor"

module Git
  module Dropbox
    class CLI < Thor


      desc 'sync', 'Syncs current git repository to dropbox folder'

      def sync
        config = Git::Dropbox::Config.load
        Repository.new(config).sync(Dir.pwd)
      end

      desc 'init', 'Initialize this gem'

      def init
        folder = "#{ENV['HOME']}/Dropbox/git"
        Git::Dropbox::Config.init!(folder)
      end


    end
  end
end


