class Cool
  attr_accessor :result, :a, :b

  def initialize(a, b)
    @a = a.to_i
    @b = b.to_i
  end  
  
  def execute
    self.result = self.class.convert(self.class.convert(@a) + self.class.convert(@b))
  end

  class << self
    def convert(num)
      num.to_s.reverse.to_i
    end
  end
end
