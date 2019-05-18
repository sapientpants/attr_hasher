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

  s.rdoc_options = ['--line-numbers', '--inline-source', '--main', 'README.rdoc']

  s.require_paths = ['lib']

  s.files      = `git ls-files`.split("\n")
  s.test_files = `git ls-files -- test/*`.split("\n")

  s.required_ruby_version = '>= 2.3.0'

  s.signing_key = File.expand_path('~/.ssh/gem-private_key.pem') if $PROGRAM_NAME =~ /gem\z/
end
