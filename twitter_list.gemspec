# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'twitter_list/version'

Gem::Specification.new do |s|
  s.name          = 'twitter_list'
  s.version       = TwitterList::VERSION
  s.authors       = ["Everypolitician"]
  s.email         = 'team@everypolitician.org'

  s.summary       = "A gem to interface with Twitter Lists!"
  s.homepage      =
  'https://github.com/everypolitician/twitter_list'
  s.license       = 'MIT'

  s.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  s.bindir        = 'exe'
  s.executables   = s.files.grep(%r{^exe/}) { |f| File.basename(f) }
  s.require_paths = ['lib']
  s.date          = '2016-07-18'

  s.add_runtime_dependency 'twitter'

  s.add_development_dependency 'bundler', '~> 1.11'
  s.add_development_dependency 'rake', '~> 11.2'
  s.add_development_dependency 'rspec', '>=3.4.0'
  s.add_development_dependency 'coveralls'
  s.add_development_dependency 'pry', '~> 0.10'
  s.add_development_dependency 'webmock'
  s.add_development_dependency 'vcr', '~> 3.0.3'
end
