# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tinkoff/version'

Gem::Specification.new do |spec|
  spec.name          = 'tinkoff'
  spec.version       = Tinkoff::VERSION
  spec.authors       = ['Dan Kim']
  spec.email         = ['itsdanya@gmail.com']

  spec.summary       = 'Tinkoff API wrapper.'
  spec.description   = 'Ruby wrapper for Tinkoff Acquiring API.'
  spec.homepage      = 'https://github.com/dankimio/tinkoff'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.13'
  spec.add_development_dependency 'rake', '~> 11.0'
  spec.add_development_dependency 'minitest', '~> 5.0'
end
