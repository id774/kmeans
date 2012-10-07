# -*- coding: utf-8 -*-

require File.dirname(__FILE__) + '/../../spec_helper'

describe Kmeans::Cluster do
  before :all do
    @testdata = {
      "test01"=>
        {"hoge"=>0,
         "fuga"=>1,
         "piyo"=>0
        },
      "test02"=>
        {"hoge"=>2,
         "fuga"=>1,
         "piyo"=>3
        },
      "test03"=>
        {"hoge"=>3,
         "fuga"=>0,
         "piyo"=>1
        },
      "test04"=>
        {"hoge"=>0,
         "fuga"=>2,
         "piyo"=>0
        },
      "test05"=>
        {"hoge"=>4,
         "fuga"=>2,
         "piyo"=>3
        },
      "test06"=>
        {"hoge"=>3,
         "fuga"=>1,
         "piyo"=>1
        }
      }
  end

  context 'の Cluster クラスにおいて' do
    describe '二次元ハッシュを渡すと' do
      it "Kmeans::Cluster クラスが返却される" do
        result = Kmeans::Cluster.new(@testdata, {
          :centroids => 4,
          :loop_max => 10
          })
        result.class.should be_equal Kmeans::Cluster
      end
    end

    describe 'make_cluster メソッドを呼ぶと' do
      it "ハッシュの配列が返却される (結果は実行ごとに異なる)" do
        result = Kmeans::Cluster.new(@testdata, {
          :centroids => 4,
          :loop_max => 10
          })
        result.make_cluster
        result.cluster.class.should be_equal Hash
        result.cluster.values.class.should be_equal Array
      end
    end
  end
end
