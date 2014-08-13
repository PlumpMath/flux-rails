# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'flux/rails/version'

Gem::Specification.new do |spec|
  spec.name          = "flux-rails"
  spec.version       = Flux::Rails::VERSION
  spec.authors       = ["Kurt Mueller"]
  spec.email         = ["kurtronaldmueller@gmail.com"]
  spec.summary       = %q{Flux dispatcher for the Ruby on Rails asset pipeline}
  spec.description   = %q{Use facebook's dispatcher in your Rails project.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
