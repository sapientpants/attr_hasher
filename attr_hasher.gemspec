# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift lib unless $LOAD_PATH.include?(lib)

require 'attr_hasher/version'
require 'date'

Gem::Specification.new do |s|
  s.name    = 'attr_hasher'
  s.version = AttrHasher::Version.string
  s.date    = Date.today

  s.summary     = 'Hash attributes'
  s.description = 'Generates attr_accessors that hash attributes transparently'

  s.authors = ['Marc Tremblayu']
  s.email    = ['marc.tremblay@protonmail.ch']
  s.homepage = 'http://github.com/sapientpants/attr_hasher'
  s.license = 'MIT'

  s.rdoc_options = [
    '--line-numbers', '--inline-source', '--main', 'README.rdoc'
  ]

  s.require_paths = ['lib']

  s.files      = `git ls-files`.split("\n")
  s.test_files = `git ls-files -- test/*`.split("\n")

  s.required_ruby_version = '>= 2.3.0'

  s.add_development_dependency 'rake', '~> 13.0'
  s.add_development_dependency 'rspec', '~> 3.8'
  s.add_development_dependency 'rubocop', '~> 0.69'
  s.add_development_dependency 'rubocop-performance', '~> 1.3'
  s.add_development_dependency 'rubocop-rspec', '~> 1.33'
  s.add_development_dependency 'simplecov', '~> 0.16'

  if $PROGRAM_NAME.end_with?('gem')
    s.signing_key = File.expand_path('~/.ssh/gem-private_key.pem')
  end
end
