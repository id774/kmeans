#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

module Kmeans
  VERSION = "0.0.1"
  ROOT_DIR = File.expand_path("..", File.dirname(__FILE__))
  $:.unshift ROOT_DIR
  $:.unshift ROOT_DIR + '/lib'
  $:.unshift ROOT_DIR + '/lib/kmeans'

  require 'cluster'
end
