# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ruby_ut_workshop/version'

Gem::Specification.new do |spec|
  spec.name          = "ruby_ut_workshop"
  spec.version       = RubyUtWorkshop::VERSION
  spec.authors       = ["zhaoliang"]
  spec.email         = ["scys77@gmail.com"]
  spec.summary       = %q{ruby unit test workshop}
  spec.description   = %q{ruby unit test workshop}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
