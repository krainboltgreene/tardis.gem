# require 'bundler/gem_tasks'

# task :default => :tests

# desc "Run tests"
# task :tests do
#   sh "bacon -Itest -rubygems -a"
# end

require 'rubygems'
require 'bundler'
require 'bundler/gem_tasks'
Bundler::GemHelper.install_tasks

begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end

require 'rake'
require 'rake/testtask'
Rake::TestTask.new(:test) do |test|
  test.test_files = FileList.new('test/**/test_*.rb') do |list|
    list.exclude 'test/helper.rb'
    list.exclude 'test/fixtures/**/*.rb'
  end
  test.libs << 'test'
  test.verbose = true
end

require 'yard'
YARD::Rake::YardocTask.new do |t|
  t.files = FileList['lib/**/*.rb']
end

task :default => :test