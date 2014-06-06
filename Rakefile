# Bundler
require 'bundler'
Bundler::GemHelper.install_tasks

# Documentation
require 'yard'
YARD::Rake::YardocTask.new
task :doc => :yard

# Testing
require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new
task :test => :spec

task :default => :test
# vim: ts=2 sw=2:
# encoding: utf-8
