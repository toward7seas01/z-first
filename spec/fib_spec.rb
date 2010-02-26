require "spec_helper"

describe "fib" do
  it "should ok" do
    cool(1, 1)
    cool(0, 0)
    cool(9, 34)
  end

  def cool(num, result)
    OK3.fib(num).should == result
  end
end
