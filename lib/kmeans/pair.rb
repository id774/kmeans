# -*- coding: utf-8 -*-

module Kmeans
  class Pair < Array
    def initialize(*args)
      super
      slice!(2, (size - 2))
    end

    alias_method :original_eql?, :eql?
    alias_method :original_hash, :hash

    def eql?(other)
      sort.original_eql?(other.sort)
    end

    def hash
      sort.original_hash
    end

    alias == eql?
    alias left first
    alias right last
  end
end
