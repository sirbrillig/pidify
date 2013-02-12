# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pidify/version'

Gem::Specification.new do |gem|
  gem.name          = "pidify"
  gem.version       = Pidify::VERSION
  gem.authors       = ["Payton Swick"]
  gem.email         = ["payton@foolord.com"]
  gem.description   = %q{A module to allow a script to check if there is currently another running instance of itself, and give it the ability to kill that instance based on PID.}
  gem.summary       = %q{Ruby gem to background a task (on UNIX) and control it.}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
