class LargestPrimeFactor
  attr_reader :num

  def initialize(num)
    @num = num
  end

  def number
    (Math.sqrt(num).round).downto(2){ |i| return i if num % i == 0 && prime?(i) } 
  end

  def prime?(num)
    (2..(Math.sqrt(num).round)).none?{|n| num % n == 0}
  end  
end