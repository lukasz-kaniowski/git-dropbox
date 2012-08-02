require "thor"

module Git
  module Dropbox
    class CLI < Thor



      desc 'sync', 'Syncs current git repository to dropbox folder'

      def sync
        Repository.new({}).sync(".")
      end

      private
      def create_dropbox
        config = load_configuration
        Git::Dropbox.new(config)
      end

      def load_configuration
        {}
      end


    end
  end
end


