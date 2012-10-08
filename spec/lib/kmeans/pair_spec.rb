# -*- coding: utf-8 -*-

require File.dirname(__FILE__) + '/../../spec_helper'

describe Kmeans::Pair do
  context 'の Pair クラスにおいて' do
    describe '最小値と最大値を渡す場合' do
      it "ペアが返却される" do
        min = 0
        max = 4
        expect = [0, 4]
        result = Kmeans::Pair.new([min, max])
        result[0].should == expect[0]
        result[1].should == expect[1]
      end

      it "ペアが返却される" do
        min = 1
        max = 3
        expect = [1, 3]
        result = Kmeans::Pair.new([min, max])
        result[0].should == expect[0]
        result[1].should == expect[1]
      end
    end

    describe '最小値と最大値と余分な値を渡す場合' do
      it "ペアが返却される" do
        min = 2
        max = 4
        unexpected = 6
        expect = [2, 4]
        result = Kmeans::Pair.new([min, max, unexpected])
        result[0].should == expect[0]
        result[1].should == expect[1]
      end
    end

    describe '同一の値を渡す場合' do
      it "ペアが返却される" do
        min = 5
        max = 5
        expect = [5, 5]
        result = Kmeans::Pair.new([min, max])
        result[0].should == expect[0]
        result[1].should == expect[1]
      end
    end
  end
end
