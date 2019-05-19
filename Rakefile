# frozen_string_literal: true

require 'bundler/gem_tasks'
require 'rspec/core/rake_task'
# require 'rubocop/rake_task'
# require 'rubocop/version'

# task :rubocop do
#   puts RuboCop::Version.version
#   RuboCop::RakeTask.new do |task|
#     task.formatters = ['progress', ['json', '--out', 'rubocop-report.json']]
#     task.patterns = %w[lib spec]
#   end
# end

RSpec::Core::RakeTask.new(:spec)

task default: :spec
