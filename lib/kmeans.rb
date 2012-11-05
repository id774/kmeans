#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

module Kmeans
  VERSION = "0.0.7"
  require File.dirname(__FILE__) +  "/kmeans/pair"
  require File.dirname(__FILE__) +  "/kmeans/pearson"
  require File.dirname(__FILE__) +  "/kmeans/cluster"
  require File.dirname(__FILE__) +  "/kmeans/hcluster"
  require File.dirname(__FILE__) +  "/kmeans/dendrogram"
end
