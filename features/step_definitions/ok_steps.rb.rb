当 /^对(.*)\.(.*)输入(.*)$/ do |mod, method, ary|
  ary = eval(ary)
  mod = mod.split("::").inject(Object) { |f, c| f.const_get(c) }
  
  if ary
    @result = mod.send(method.to_sym, ary)
  else
    @result = mod.send(method.to_sym)
  end
end


那么 /^输出(.+)$/ do |result|
  @result.should == result.to_i
end
