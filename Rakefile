require "bundler/gem_tasks"
require 'rake/testtask'

desc 'Default: run specs.'
task :default => :test

desc "Run specs"
Rake::TestTask.new do |t|
  t.libs.push "lib"
  t.verbose = true
  t.test_files = FileList['spec/**/*_spec.rb']
end

