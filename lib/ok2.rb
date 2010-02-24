
module OK2
  def self.execute(ary)
    if ary.empty?
      return -1
    else
      hash = Hash.new(0)
      ary.each do |i|
        hash[i] += 1
      end

      num = ary.first
      times = hash[num]
  

      hash.each do |k, v|
        if v > times
          times = v
          num = k
        end
      end
  
      if num > (ary.size/2)
        ary.index(num)
      else
        -1
      end
    end

  end
end
