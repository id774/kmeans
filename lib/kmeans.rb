#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

module Kmeans
  VERSION = "0.0.3"
  require File.dirname(__FILE__) +  "/kmeans/pair"
  require File.dirname(__FILE__) +  "/kmeans/pearson"
  require File.dirname(__FILE__) +  "/kmeans/cluster"
  require File.dirname(__FILE__) +  "/kmeans/hcluster"
end
