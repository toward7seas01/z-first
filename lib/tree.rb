class Tree
  attr_accessor :left, :right, :data
  
  def initialize(data = nil, left = nil, right = nil)
    @data = data
    (@left = Tree.new(left)) unless left.nil?
    (@right = Tree.new(right)) unless right.nil?
  end

  def inorder
    if @data
      result = [@data]
    else
      result = []
    end
    
    result.unshift(*@left.inorder) if @left
    result.push(*@right.inorder) if @right

    result
  end

  def preorder
    if @data
      result = [@data]
    else
      result = []
    end

    result.push(*@left.preorder) if @left
    result.push(*@right.preorder) if @right

    result
  end

  def postorder
    if @data
      result = [@data]
    else
      result = []
    end

    
    result.unshift(*@right.postorder) if @right
    result.unshift(*@left.postorder) if @left

    result
  end

  def insert(data)
    if @data.nil?
      @data = data
    else
      if data < @data
        if @left
          @left.insert(data)
        else
          @left = Tree.new(data)
        end
      else
        if @right
          @right.insert(data)
        else
          @right = Tree.new(data)
        end
      end
    end
    
  end



end
