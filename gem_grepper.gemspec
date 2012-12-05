# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'gem_grepper/version'

Gem::Specification.new do |gem|
  gem.name          = "gem_grepper"
  gem.version       = GemGrepper::VERSION
  gem.authors       = ["Steven Haddox"]
  gem.email         = ["steven@haddox.us"]
  gem.description   = %q{Retrieve metadata about gems from multiple sources.}
  gem.summary       = %q{Pulls data from RubyGems, Ruby-Toolbox, and IsItRuby19 and exports it to an easily parsable JSON/CSV format.}
  gem.homepage      = "https://github.com/stevenhaddox/gem_grepper"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency('bundler', '~> 1.2')
  
  gem.add_development_dependency('rspec', '~> 2.4')
  gem.add_development_dependency('spinach', '~> 0.6')
  gem.add_development_dependency('capybara', '~> 2.0')
end
