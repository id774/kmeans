# -*- mode: ruby; coding: utf-8 -*-

require 'rubygems'

require 'rspec/core'
require 'rspec/core/rake_task'

task :spec do
  RSpec::Core::RakeTask.new(:spec) do |spec|
    spec.rspec_opts = ["-c","-fs"]
    spec.pattern = FileList['spec/**/*_spec.rb']
  end
end

if RUBY_VERSION >= '1.9.0'
  desc "Run RSpec code examples with simplecov"
  task :simplecov do
    ENV['COVERAGE'] = "on"
    Rake::Task[:spec].invoke
  end
else
  desc "Run RSpec code examples with rcov"
  RSpec::Core::RakeTask.new(:rcov) do |spec|
    spec.pattern = FileList['spec/lib/**/*_spec.rb']
    exclude_files = [
      "gems",
    ]
    spec.rcov_opts = ['--exclude', exclude_files.join(",")]
    spec.rcov = true
  end
end

require 'jeweler'
Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://docs.rubygems.org/read/chapter/20 for more options
  gem.name = "kmeans"
  gem.homepage = "http://github.com/id774/kmeans"
  gem.license = "GPL"
  gem.summary = %Q{kmeans}
  gem.description = %Q{K-means clustering}
  gem.email = "idnanashi@gmail.com"
  gem.authors = ["id774"]
  # dependencies defined in Gemfile
end
Jeweler::RubygemsDotOrgTasks.new
