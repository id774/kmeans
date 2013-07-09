# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "kmeans"
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["id774"]
  s.date = "2013-07-09"
  s.description = "K-means clustering"
  s.email = "idnanashi@gmail.com"
  s.extra_rdoc_files = [
    "README.md"
  ]
  s.files = [
    "Gemfile",
    "README.md",
    "Rakefile",
    "VERSION",
    "demo.rb",
    "doc/AUTHORS",
    "doc/COPYING",
    "doc/COPYING.LESSER",
    "doc/ChangeLog",
    "doc/LICENSE",
    "doc/README",
    "kmeans.gemspec",
    "lib/kmeans.rb",
    "lib/kmeans/cluster.rb",
    "lib/kmeans/dendrogram.rb",
    "lib/kmeans/hcluster.rb",
    "lib/kmeans/pair.rb",
    "lib/kmeans/pearson.rb",
    "script/build",
    "spec/fixtures/blogdata.txt",
    "spec/lib/kmeans/cluster_spec.rb",
    "spec/lib/kmeans/dendrogram_spec.rb",
    "spec/lib/kmeans/hcluster_spec.rb",
    "spec/lib/kmeans/pair_spec.rb",
    "spec/lib/kmeans/pearson_spec.rb",
    "spec/lib/kmeans_spec.rb",
    "spec/spec_helper.rb",
    "vendor/.gitkeep"
  ]
  s.homepage = "http://github.com/id774/kmeans"
  s.licenses = ["GPL"]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.24"
  s.summary = "kmeans"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<cucumber>, [">= 0"])
      s.add_development_dependency(%q<bundler>, [">= 0"])
      s.add_development_dependency(%q<jeweler>, [">= 0"])
    else
      s.add_dependency(%q<cucumber>, [">= 0"])
      s.add_dependency(%q<bundler>, [">= 0"])
      s.add_dependency(%q<jeweler>, [">= 0"])
    end
  else
    s.add_dependency(%q<cucumber>, [">= 0"])
    s.add_dependency(%q<bundler>, [">= 0"])
    s.add_dependency(%q<jeweler>, [">= 0"])
  end
end

