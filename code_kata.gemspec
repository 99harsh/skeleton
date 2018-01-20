# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "Code Kata"
  spec.version       = '1.0'
  spec.authors       = ["Your Name Here"]
  spec.email         = ["youremail@here.com"]
  spec.summary       = %q{Short summary of your project}
  spec.description   = %q{Longer description of your project.}
  spec.homepage      = "http://domainforproject.com/"
  spec.license       = "MIT"

  spec.files         = ['lib/code_kata.rb']
  spec.executables   = ['bin/code_kata']
  spec.test_files    = ['tests/test_code_kata.rb']
  spec.require_paths = ["lib"]
end
