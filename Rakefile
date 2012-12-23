# encoding: utf-8

require 'rubygems'
require 'bundler'

begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'

require 'jeweler'
Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://docs.rubygems.org/read/chapter/20 for more options
  gem.name = "pil"
  gem.homepage = "http://github.com/senorprogrammer/pil"
  gem.license = "MIT"
  gem.summary = %Q{The Password Inclusion List}
  gem.description = %Q{Checks a given plaintext password against an inclusion list of common passwords. Returns TRUE if the user's password is in the list; FALSE if it isn't.}
  gem.email = "chriscummer@me.com"
  gem.authors = ["Chris Cummer"]

  # dependencies defined in Gemfile
  gem.files.include 'lib/data/passwords.txt'
end
Jeweler::RubygemsDotOrgTasks.new

require 'rake/testtask'
Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test'
  test.pattern = 'test/**/test_*.rb'
  test.verbose = true
end

task :default => :test

require 'rdoc/task'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "pil #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
