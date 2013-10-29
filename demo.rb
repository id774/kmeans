#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

$:.unshift File.join(File.dirname(__FILE__))

require 'lib/kmeans/pair'
require 'lib/kmeans/pearson'
require 'lib/kmeans/cluster'

hash = {
  "test01"=> {"hoge"=>0, "fuga"=>1, "piyo"=>0 },
  "test02"=> {"hoge"=>2, "fuga"=>1, "piyo"=>3 },
  "test03"=> {"hoge"=>3, "fuga"=>0, "piyo"=>1 },
  "test04"=> {"hoge"=>0, "fuga"=>2, "piyo"=>0 },
  "test05"=> {"hoge"=>4, "fuga"=>2, "piyo"=>3 },
  "test06"=> {"hoge"=>3, "fuga"=>1, "piyo"=>1 }
}

kmeans = Kmeans::Cluster.new(hash, {
  :centroids => 3,
  :loop_max => 10
})

# Kmeans Clustering
kmeans.make_cluster

# The results differ for each run
p kmeans.cluster.values #=> [["test01", "test04"], ["test02"], ["test03", "test05", "test06"]]

