# Rakefile
require_relative './til'
require 'rake'
require 'rake/testtask'
require 'sinatra/activerecord/rake'

Rake::TestTask.new do |t|
  t.pattern = "test/*_test.rb"
end

task default: :test
