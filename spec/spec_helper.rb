# -*- coding: utf-8 -*-

APP_ROOT = File.expand_path(File.join(File.dirname(__FILE__), ".."))
$LOAD_PATH.unshift APP_ROOT
$LOAD_PATH.unshift File.join(APP_ROOT)
$LOAD_PATH.unshift File.join(APP_ROOT, 'lib')

require 'kmeans'

def readline(filename)
  lines = Array.new
  open(filename).each {|line|
    lines.push(line)
  }

  colnames = lines[0].strip().split("\t")
  colnames.shift

  rownames = Array.new
  data = Array.new
  lines[1...lines.length].each {|line|
    tmp = line.strip().split("\t")
    rownames.push(tmp.shift)
    wordcount = Array.new
    tmp.each {|c|
      wordcount.push(c.to_i)
    }
    data.push(wordcount)
  }

  return rownames,colnames,data
end

if ENV['COVERAGE'] == 'on'
  require 'simplecov'
  require 'simplecov-rcov'
  SimpleCov.formatter = SimpleCov::Formatter::RcovFormatter

  SimpleCov.start do
    add_filter "spec"
    add_filter "vendor"
  end
end

unless /^1\.9\./ =~ RUBY_VERSION
  require 'rspec'
end

RSpec.configure do |config|
end
