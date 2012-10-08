# -*- coding: utf-8 -*-

require File.dirname(__FILE__) + '/../../spec_helper'

describe Kmeans::Pearson do
  context 'の Pearson クラスにおいて' do
    describe '相関係数 0.0 となる集合を渡す場合' do
      it "ピアソン相関係数が返却される" do
        expect = 0.0
        v1 = [4,2,3]
        v2 = [0,0,1]
        result = Kmeans::Pearson.calc(v1,v2)
        result.should == expect
      end

      it "ピアソン相関係数が返却される" do
        expect = 0.0
        v1 = [0, 2, 0]
        v2 = [2, 1, 0]
        result = Kmeans::Pearson.calc(v1,v2)
        result.should == expect
      end

      it "ピアソン相関係数が返却される" do
        expect = 0.0
        v1 = [0, 2, 0]
        v2 = [(3/2), (1/2), (1/2)]
        result = Kmeans::Pearson.calc(v1,v2)
        result.should == expect
      end

      it "ピアソン相関係数が返却される" do
        expect = 0.0
        v1 = [4, 2, 3]
        v2 = [(3/2), (3/2), (1/2)]
        result = Kmeans::Pearson.calc(v1,v2)
        result.should == expect
      end

      it "ピアソン相関係数が返却される" do
        expect = 0.0
        v1 = [2, 1, 3]
        v2 = [(10/3), (1/1), (5/3)]
        result = Kmeans::Pearson.calc(v1,v2)
        result.should == expect
      end

      it "ピアソン相関係数が返却される" do
        expect = 0.0
        v1 = [0, 1, 0]
        v2 = [2, 1, 0]
        result = Kmeans::Pearson.calc(v1,v2)
        result.should == expect
      end

      it "ピアソン相関係数が返却される" do
        expect = 0.0
        v1 = [0, 1, 0]
        v2 = [(10/3), (1/1), (5/3)]
        result = Kmeans::Pearson.calc(v1,v2)
        result.should == expect
      end

      it "ピアソン相関係数が返却される" do
        expect = 0.0
        v1 = [0, 2, 0]
        v2 = [2, 1, 0]
        result = Kmeans::Pearson.calc(v1,v2)
        result.should == expect
      end
    end

    describe '相関係数が正となる集合を渡す場合' do
      it "ピアソン相関係数が返却される" do
        expect = 0.31622776601683794
        v1 = [3, 0, 1]
        v2 = [(2/1), (1/1), (3/1)]
        result = Kmeans::Pearson.calc(v1,v2)
        result.should == expect
      end

      it "ピアソン相関係数が返却される" do
        expect = 0.4472135954999579
        v1 = [3, 0, 1]
        v2 = [(3/2), (3/2), (1/2)]
        result = Kmeans::Pearson.calc(v1,v2)
        result.should == expect
      end

      it "ピアソン相関係数が返却される" do
        expect = 0.8944271909999159
        v1 = [3, 0, 1]
        v2 = [(3/2), (1/2), (1/2)]
        result = Kmeans::Pearson.calc(v1,v2)
        result.should == expect
      end

      it "ピアソン相関係数が返却される" do
        expect = 0.5773502691896258
        v1 = [0, 2, 0]
        v2 = [(3/2), (3/2), (1/2)]
        result = Kmeans::Pearson.calc(v1,v2)
        result.should == expect
      end

      it "ピアソン相関係数が返却される" do
        expect = 0.8164965809277261
        v1 = [4, 2, 3]
        v2 = [(3/1), (3/2), (3/1)]
        result = Kmeans::Pearson.calc(v1,v2)
        result.should == expect
      end

      it "ピアソン相関係数が返却される" do
        expect = 0.5
        v1 = [4, 2, 3]
        v2 = [2, 1, 0]
        result = Kmeans::Pearson.calc(v1,v2)
        result.should == expect
      end

      it "ピアソン相関係数が返却される" do
        expect = 0.7071067811865475
        v1 = [4, 2, 3]
        v2 = [(3/2), (1/2), (1/2)]
        result = Kmeans::Pearson.calc(v1,v2)
        result.should == expect
      end

      it "ピアソン相関係数が返却される" do
        expect = 0.6666666666666666
        v1 = [3, 1, 1]
        v2 = [(3/1), (3/2), (3/1)]
        result = Kmeans::Pearson.calc(v1,v2)
        result.should == expect
      end

      it "ピアソン相関係数が返却される" do
        expect = 0.8164965809277261
        v1 = [3, 1, 1]
        v2 = [2, 1, 0]
        result = Kmeans::Pearson.calc(v1,v2)
        result.should == expect
      end

      it "ピアソン相関係数が返却される" do
        expect = 0.5773502691896258
        v1 = [3, 1, 1]
        v2 = [(3/2), (3/2), (1/2)]
        result = Kmeans::Pearson.calc(v1,v2)
        result.should == expect
      end

      it "ピアソン相関係数が返却される" do
        expect = 0.31622776601683794
        v1 = [3, 0, 1]
        v2 = [(2/1), (1/1), (3/1)]
        result = Kmeans::Pearson.calc(v1,v2)
        result.should == expect
      end

      it "ピアソン相関係数が返却される" do
        expect = 0.6324555320336759
        v1 = [3, 0, 1]
        v2 = [2, 1, 0]
        result = Kmeans::Pearson.calc(v1,v2)
        result.should == expect
      end
    end

    describe '相関係数が負となる集合を渡す場合' do
      it "ピアソン相関係数が返却される" do
        expect = -0.6666666666666666
        v1 = [0, 2, 0]
        v2 = [(3/1), (3/2), (3/1)]
        result = Kmeans::Pearson.calc(v1,v2)
        result.should == expect
      end

      it "ピアソン相関係数が返却される" do
        expect = -0.4472135954999579
        v1 = [3, 0, 1]
        v2 = [(0/1), (3/2), (0/1)]
        result = Kmeans::Pearson.calc(v1,v2)
        result.should == expect
      end

      it "ピアソン相関係数が返却される" do
        expect = -0.8164965809277261
        v1 = [0, 2, 0]
        v2 = [(2/1), (1/1), (3/1)]
        result = Kmeans::Pearson.calc(v1,v2)
        result.should == expect
      end

      it "ピアソン相関係数が返却される" do
        expect = -0.7071067811865475
        v1 = [0, 1, 0]
        v2 = [(2/1), (1/1), (3/1)]
        result = Kmeans::Pearson.calc(v1,v2)
        result.should == expect
      end

      it "ピアソン相関係数が返却される" do
        expect = -0.5
        v1 = [2, 1, 3]
        v2 = [2, 1, 0]
        result = Kmeans::Pearson.calc(v1,v2)
        result.should == expect
      end

      it "ピアソン相関係数が返却される" do
        expect = -0.7071067811865475
        v1 = [2, 1, 3]
        v2 = [(0/1), (3/2), (0/1)]
        result = Kmeans::Pearson.calc(v1,v2)
        result.should == expect
      end
    end

    describe '相関係数が 1.0 の場合' do
      it "ピアソン相関係数が返却される" do
        expect = 1.0
        v1 = [0, 1, 0]
        v2 = [(0/1), (3/2), (0/1)]
        result = Kmeans::Pearson.calc(v1,v2)
        result.should == expect
      end

      it "ピアソン相関係数が返却される" do
        expect = 1.0
        v1 = [2, 1, 3]
        v2 = [(2/1), (1/1), (3/1)]
        result = Kmeans::Pearson.calc(v1,v2)
        result.should == expect
      end
    end

    describe '相関係数が 1 を越える場合' do
      it "ピアソン相関係数が返却される" do
        expect = 1.0327955589886444
        v1 = [3, 0, 1]
        v2 = [(10/3), (1/1), (5/3)]
        result = Kmeans::Pearson.calc(v1,v2)
        result.should == expect
      end

      it "ピアソン相関係数が返却される" do
        expect = 1.1547005383792517
        v1 = [0, 2, 0]
        v2 = [(0/1), (3/2), (0/1)]
        result = Kmeans::Pearson.calc(v1,v2)
        result.should == expect
      end

      it "ピアソン相関係数が返却される" do
        expect = 1.1547005383792517
        v1 = [3, 1, 1]
        v2 = [(3/2), (1/2), (1/2)]
        result = Kmeans::Pearson.calc(v1,v2)
        result.should == expect
      end
    end
  end
end
