# -*- coding: utf-8 -*-

module Kmeans
  class Pearson
    def self.calc(v1, v2)
      v1 = [v1] if v1.class != Array
      v2 = [v2] if v2.class != Array

      sum1 = 0
      v1.each{|n|
        sum1 += n
      }
      sum2 = 0
      v2.each{|n|
        sum2 += n
      }

      sum1Sq = 0
      v1.each{|n|
        sum1Sq += n*n
      }
      sum2Sq = 0
      v2.each{|n|
        sum2Sq += n*n
      }

      pSum = 0
      for i in 0...v1.length
        pSum += v1[i]*v2[i]
      end

      num = pSum - (sum1*sum2/v1.length)
      den = Math::sqrt((sum1Sq-sum1*sum1/v1.length)*(sum2Sq-sum2*sum2/v1.length))
      return 0 if den == 0
      return num/den
    end
  end
end
