lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'interesting_methods/version'

Gem::Specification.new do |spec|
  spec.name          = 'interesting_methods'
  spec.version       = InterestingMethods::VERSION
  spec.authors       = ['Sean Lerner']
  spec.email         = ['sean@@smallcity.ca']
  spec.summary       = 'See relevant methods in your repl by adding .im to any object'
  spec.homepage      = 'https://github.com/seanlerner/interesting_methods'
  spec.license       = 'MIT'
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler',        '~> 1.16'
  spec.add_development_dependency 'guard',          '~> 2.14'
  spec.add_development_dependency 'guard-minitest', '~> 2.4'
  spec.add_development_dependency 'minitest',       '~> 5.0'
  spec.add_development_dependency 'pry',            '~> 0.11'
  spec.add_development_dependency 'rake',           '~> 10.0'
end
