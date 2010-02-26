module OK3
  class << self
    def fib(n)

      result = []
      (0..n).each do |i|
        case i
        when 0
          result[0] = 0
        when 1
          result[1] = 1
        else
          result[i] = result[i-1] + result[i-2]
        end
      end

      result[n]
      
    end
  end
end