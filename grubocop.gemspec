# encoding: utf-8

$LOAD_PATH.push File.expand_path('../lib', __FILE__)

require 'grubocop/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'grubocop'
  s.version     = Grubocop::VERSION
  s.authors     = ["Smith Ascari"]
  s.email       = ["smithascari@gmail.com"]
  s.homepage    = 'https://github.com/smithascari/grubocop'
  s.summary     = "A simple wrapper to rubocop gem"
  s.description = ""
  s.license     = 'MIT'

  s.files = Dir['{lib,bin}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']
  s.test_files = Dir['spec/**/*']
  s.executables = Dir['bin/*'].map { |f| File.basename(f) }

  s.add_development_dependency 'rake', '~> 0'
  s.add_development_dependency 'rspec-core', '~> 0'
end
