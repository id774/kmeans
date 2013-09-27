# -*- coding: utf-8 -*-

module Kmeans
  class Bicluster
    def initialize(vec, left=nil, right=nil, distance=0.0, id=nil)
      @left = left
      @right = right
      @vec = vec
      @id = id
      @distance = distance
    end

    attr_accessor :left, :right, :vec, :id, :distance
  end

  class HCluster
    def initialize
      @out = ""
    end

    def printclust(clust, labels=nil, n=0)
      n.times do
         @out << " "
      end
      if clust.id < 0
        @out << "-\n"
      else
        if labels == nil
          @out << clust.id.to_s + "\n"
        else
          @out << labels[clust.id] + "\n"
        end
      end
      printclust(clust.left, labels, n+1) if clust.left != nil
      printclust(clust.right, labels, n+1) if clust.right != nil

      return @out
    end

    def hcluster(rows)
      distances = Hash.new
      currentclustid = -1

      clust = Array.new
      for i in 0...rows.length
        c = Bicluster.new(rows[i])
        c.id = i
        clust.push(c)
      end

      while clust.length > 1
        lowestpair = [0,1]
        closest = 1 - Pearson.calc(clust[0].vec, clust[1].vec)
        for i in 0...clust.length
          for j in i+1...clust.length
            if !distances.key?([clust[i].id, clust[j].id])
              distances[[clust[i].id, clust[j].id]] = 1 - Pearson.calc(clust[i].vec, clust[j].vec)
            end
            d = distances[[clust[i].id, clust[j].id]]
            if d < closest
              closest = d
              lowestpair = [i,j]
            end
          end
        end

        mergevec = Array.new
        for i in 0...clust[0].vec.length
          m = (clust[lowestpair[0]].vec[i] + clust[lowestpair[1]].vec[i])/2.0
          mergevec.push(m)
        end

        newcluster = Bicluster.new(mergevec, clust[lowestpair[0]], clust[lowestpair[1]], closest, currentclustid)

        currentclustid -= 1
        clust.delete_at(lowestpair[1])
        clust.delete_at(lowestpair[0])
        clust.push(newcluster)
      end

      return clust[0]
    end
  end
end
