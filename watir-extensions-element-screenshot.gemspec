# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'watir/extensions/element/screenshot/version'

Gem::Specification.new do |spec|
  spec.name          = "watir-extensions-element-screenshot"
  spec.version       = Watir::Extensions::Element::Screenshot::VERSION
  spec.authors       = ["Anthony Johnson"]
  spec.email         = ["ansoni@gmail.com"]
  spec.summary       = %q{Extend Watir to be able to screenshot any element}
  spec.homepage      = ""
  spec.license       = "Apache"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_runtime_dependency "rmagick"
  spec.add_runtime_dependency "watir-webdriver"
end
