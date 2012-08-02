require "thor"

module Git
  module Dropbox
    class CLI < Thor

      desc 'sample', 'Sample task'
      def sample
        puts "This is your new task"
      end

    end
  end
end
