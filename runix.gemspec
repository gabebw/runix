# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'runix/version'

Gem::Specification.new do |gem|
  gem.name          = 'runix'
  gem.version       = Runix::VERSION
  gem.authors       = ['Gabe Berke-Williams']
  gem.email         = ['gabe@thoughtbot.com']
  gem.description   = %q{ruby <3 unix}
  gem.summary       = %q{Extend ruby with Unix}
  gem.homepage      = ''

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']

  gem.add_development_dependency('rspec', '~> 2.12')
end
