require 'bundler/gem_tasks'
require 'rspec/core/rake_task'
require 'rubygems/commands/inabox_command'

task :make_rally_api_gem do
  system("gem build rally_api.gemspec")
end

desc "run all api tests"
RSpec::Core::RakeTask.new('api_tests') do |t|
  t.pattern = ['test/*_spec.rb']
end

desc "run api create tests"
RSpec::Core::RakeTask.new('api_create_tests') do |t|
  t.pattern = ['test/*create_spec.rb']
end

desc "publish gem to Rally gem server"
task :publish_gem do
  g = Gem::Commands::InaboxCommand.new
  g.options[:overwrite] = true
  g.options[:host] = "http://int-ububld1:9292/"
  g.options[:args] = []
  g.execute
end

desc "build gem and publish to Rally gem server"
task :publish => [:build, :publish_gem]
