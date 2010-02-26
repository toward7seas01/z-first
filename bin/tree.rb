require '../lib/tree'

@tree = Tree.new

[3,6,1,4,2,10].each do |i|
  @tree.insert i
end

p @tree.postorder