
module OK1
  def self.sum(ary)
    result = 0
    ary.each do |i|
      result += i
    end
    result
  end

  def self.execute(ary)
    flag = -1
    ary.each_with_index do |v, i|
      return i if sum(ary[0...i]) == sum(ary[(i+1)..(-1)])
    end

    return flag


  end
end







