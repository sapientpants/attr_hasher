# frozen_string_literal: true

source 'https://rubygems.org'

git_source(:github) { |repo_name| "https://github.com/#{repo_name}" }

gemspec

group :test do
  gem 'rspec'
  gem 'rspec_sonar_formatter', github: 'witjoh/rspec_sonar_formatter'
  gem 'rubocop-performance'
  gem 'rubocop-rspec'
end
