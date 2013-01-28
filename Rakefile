require 'rake/clean'
require 'rubygems'
require 'rubygems/package_task'
require 'rdoc/task'
Rake::RDocTask.new do |rd|
  rd.main = "README.rdoc"
  rd.rdoc_files.include("README.rdoc","lib/**/*.rb","bin/**/*")
  rd.title = 'Gem Grepper'
end

spec = eval(File.read('gem_grepper.gemspec'))
Gem::PackageTask.new(spec) do |pkg|
end

task :spinach_env do
  ENV['RAILS_ENV'] = 'test'
end

desc 'Run features'
task :features => :spinach_env do
  ruby '-S spinach'
end

desc 'Run features tagged as work-in-progress (@wip)'
task 'features:wip' do
  #Ignore @pending tags
  ruby '-S spinach --tags @wip'
end

task :spinach => :features
task 'spinach:wip' => 'features:wip'
task :wip => 'features:wip'

#task :default => [:features,:specs]
task :default => [:features]
