# -*- calloding: utf-8 -*-

module Kmeans
  class Cluster
    def initialize(word_counts, user_options = {})
      @word_counts = word_counts
      @min_and_max = {}
      @centroids = {}
      @cluster = Hash.new {|hash, key| hash[key] = []}
      @options = {
        :centroids => 4,
        :loop_max => 100
      }.merge(user_options)
    end

    attr_reader :cluster

    def make_cluster
      @min_and_max = min_and_max_in_word_counts
      @centroids = random_centroids

      loop_counter = 0
      old_centroids = nil
      until (@centroids == old_centroids) or (@options[:loop_max] < loop_counter)
        loop_counter += 1
        attach_keys_to_nearest_centroid
        old_centroids = Marshal.load(Marshal.dump(@centroids))
        @centroids.each_key {|centroid|
          @centroids[centroid] = average_attached(centroid) if @cluster[centroid].any?
        }
      end
    end

    private

    def min_and_max_in_word_counts
      all_counts = Hash.new {|hash, key| hash[key] = []}
      min_and_max = {}

      @word_counts.each {|key, counts|
        counts.each {|word, count|
          all_counts[word] << count.to_i
        }
      }

      all_counts.each {|word, counts|
        min_and_max[word] = Pair.new [counts.min, counts.max]
      }

      return min_and_max
    end

    def random_centroids
      centroids = {}

      @options[:centroids].times {|centroid|
        random_counts = {}
        @min_and_max.each {|word, counts|
          random_counts[word] = rand(counts.max - counts.min) + counts.min
        }
        centroids[centroid] = random_counts
      }

      return centroids
    end

    def attach_keys_to_nearest_centroid
      @cluster.clear

      @word_counts.each_key {|key|
        @cluster[nearest_centroid(key)] << key
      }
    end

    def nearest_centroid(key)
      correlations = @centroids.map {|centroid, centroid_word_count|
        all_counts = []
        centroid_counts = []

        @word_counts[key].each {|word, count|
          count = 0 unless count.class == Fixnum
          all_counts << count
          centroid_counts << centroid_word_count[word]
        }
        centroid_counts.empty? ? 0 : 1 - Pearson.calc(all_counts, centroid_counts)
      }

      return correlations.rindex(correlations.min {|x, y| x.abs <=> y.abs })
    end

    def average_attached(centroid)
      average_word_counts = @cluster[centroid].map {|key|
        @centroids[centroid].keys.map {|word| @word_counts[key][word]}
      }.transpose.map {|all_counts|
        all_counts.inject(0) {|sum, count|
          count = 0 unless count.class == Fixnum
          sum + count
        }.quo(all_counts.size)
      }

      return Hash[*@centroids[centroid].keys.zip(average_word_counts).flatten]
    end
  end
end
