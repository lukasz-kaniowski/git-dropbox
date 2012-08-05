require "thor"

module Git
  module Dropbox
    class CLI < Thor
      include Thor::Actions


      desc 'sync', 'Syncs current git repository to dropbox folder'
      method_options :all => false

      def sync
        config = load_config
        repositories = options[:all] ? config['repositories'] : [Dir.pwd]
        repositories.each do |repo|
          say "Synchronizing repository #{repo}"
          Repository.new(config).sync(repo)
        end
      end

      desc 'init', 'Initialize this gem'

      def init
        folder = "#{ENV['HOME']}/Dropbox/git"
        Git::Dropbox::Config.init!(folder)
      end

      desc "list", "Shows all repositories"

      def list
        config = load_config
        config['repositories'].each { |r| puts r }
      end

      private
      def load_config
        Git::Dropbox::Config.load
      end


    end
  end
end


