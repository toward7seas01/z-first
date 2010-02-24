
Given /^我输入 (\d+) (\d+)$/ do |a, b|
  @cool = Cool.new(a, b)
end

Then /^我应该看到 (\d+)$/ do |result|
  @cool.execute
  @cool.result.should == result.to_i
end













