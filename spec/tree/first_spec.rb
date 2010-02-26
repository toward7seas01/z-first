require 'spec_helper'

describe Tree do

  context "insert data to build a normal binary tree" do
    before do
      @tree = Tree.new

      [3,6,1,4,2,10].each do |data|
        @tree.insert data
      end
    end
    
    it "should hava correct forks" do
      @tree.left.data.should == 1
      @tree.right.data.should == 6
      @tree.left.right.data.should == 2
      @tree.right.left.data.should == 4
      @tree.right.right.data.should == 10
    end

  end

end
