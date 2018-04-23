# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'space2dash/version'

Gem::Specification.new do |spec|
  spec.name          = 'space2dash'
  spec.version       = Space2dash::VERSION
  spec.authors       = ['sachin21']
  spec.email         = ['sachin21.developer@gmail.com']
  spec.description   = 'Change the space into dash'
  spec.summary       = 'Change the space into dash'
  spec.homepage      = 'http://github.com/sachin21/space2dash'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($RS)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.post_install_message = "Thank you for installing space. But this gem is deprecated. \nPlease install space2hyphen.\n\n"

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rubocop'
end
