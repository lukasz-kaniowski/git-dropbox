# -*- encoding: utf-8 -*-

require File.expand_path('../lib/git/dropbox/version', __FILE__)

Gem::Specification.new do |gem|
  gem.name          = "git-dropbox"
  gem.version       = Git::Dropbox::VERSION
  gem.summary       = %q{mirrors git into dropbox}
  gem.description   = %q{Gem mirrors your git repositorys in dropbox folder}
  gem.license       = "MIT"
  gem.authors       = ["Lukasz Kaniowski"]
  gem.email         = "lukasz.kaniowski@gmail.com"
  gem.homepage      = "https://github.com/lukasz-kaniowski/git-dropbox#readme"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']

  gem.add_dependency 'thor', '~> 0.15.4'

  gem.add_development_dependency 'bundler', '~> 1.0'
  gem.add_development_dependency 'rake', '~> 0.8'
  gem.add_development_dependency 'rspec', '~> 2.4'
  gem.add_development_dependency 'rubygems-tasks', '~> 0.2'
end
