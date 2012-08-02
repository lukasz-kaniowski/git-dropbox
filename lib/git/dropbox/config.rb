module Git
  module Dropbox
    require "yaml"
    class Config < Hash

      def self.load
        YAML.load_file(config_file)
      end

      def self.config_file
        folder = `git config dropbox.folder`.split.first
        "#{folder}/git-dropbox.yml"
      end

      def self.init!(folder)
        setup_git_folder(folder)
        self.new.save
      end

      def self.setup_git_folder(folder)
        system "mkdir -p #{folder}"
        system "git config --global dropbox.folder '#{folder}'"
      end


      def save
        File.open(Config.config_file(), 'w') { |f| f.write(self.to_yaml) }
      end

    end
  end
end
