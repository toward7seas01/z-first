
def x_order_result(result)
  result = eval(result)
  @result.should == result
end


当 /^通过调用这个实例的insert方法，插入测试数据(.*)$/ do |args|
  args = eval(args)
  args.each do |arg|
    @current.insert(arg)
  end
end

那么 /^inorder方法返回(.*)$/ do |result|
  x_order_result(result)
end

那么 /^preorder方法返回(.*)$/ do |result|
  x_order_result(result)
end

那么 /^postorder方法返回(.*)$/ do |result|
  x_order_result(result)
end
