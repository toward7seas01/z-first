def const_from(mod)
  mod.split("::").inject(Object) { |f, c| f.const_get(c) }
end


当 /^对(.*)\.(.*)输入(.*)$/ do |mod, method, signs|
  signs = eval(signs)
  mod = const_from(mod)
  
  if signs
    @result = mod.send(method.to_sym, *signs)
  else
    @result = mod.send(method.to_sym)
  end
end


那么 /^输出(.+)$/ do |result|
  @result.should == result.to_i
end

假如 /^有一个(\w+)类的实例，初始化数据为(.*)$/ do |mod, signs|
  mod = const_from(mod)
  signs = eval(signs)
  if signs
    @current = mod.new(*signs)
  else
    @current = mod.new
  end
end

当 /^对这个实例调用(\w+)方法，参数(.*)$/ do |method, args|
  args = eval(args)
  if args
    @result = @current.send(method.to_sym, *args)
  else
    @result = @current.send(method.to_sym)
  end
end

那么 /^此方法返回(.*)$/ do |result|
  那么 "输出#{result}"
end
