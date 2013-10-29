#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

$:.unshift File.join(File.dirname(__FILE__))

require 'lib/kmeans/pair'
require 'lib/kmeans/pearson'
require 'lib/kmeans/hcluster'
require 'lib/kmeans/dendrogram'

hash = {
  "test01"=> {"hoge"=>0, "fuga"=>1, "piyo"=>0 },
  "test02"=> {"hoge"=>2, "fuga"=>1, "piyo"=>3 },
  "test03"=> {"hoge"=>3, "fuga"=>0, "piyo"=>1 },
  "test04"=> {"hoge"=>0, "fuga"=>2, "piyo"=>0 },
  "test05"=> {"hoge"=>4, "fuga"=>2, "piyo"=>3 },
  "test06"=> {"hoge"=>5, "fuga"=>8, "piyo"=>2 },
  "test07"=> {"hoge"=>2, "fuga"=>6, "piyo"=>1 },
  "test08"=> {"hoge"=>3, "fuga"=>4, "piyo"=>1 },
  "test09"=> {"hoge"=>2, "fuga"=>2, "piyo"=>1 },
  "test10"=> {"hoge"=>1, "fuga"=>2, "piyo"=>1 }
}

# Hierarchical clustering
hcluster = Kmeans::HCluster.new

keys = hash.keys
values = hash.values.map {|x| x.values }
clust = hcluster.hcluster(values)
p hcluster.printclust(clust, keys) #=> "-\n -\n  -\n   test07\n   -\n    test01\n    test04\n  -\n   test08\n   -\n    test06\n    -\n     test09\n     test10\n -\n  test02\n  -\n   test03\n   test05\n"

# Draw Dendrogram (Using with RMagick)
dendrogram = Kmeans::Dendrogram.new(
  :imagefile => 'demo.png'
)

dendrogram.drawdendrogram(clust, keys)

