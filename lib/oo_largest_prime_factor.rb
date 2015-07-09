class LargestPrimeFactor
  attr_reader :num

  def initialize(num)
    @num = num
  end

  def number
    prime = num
    (Math.sqrt(num).round).downto(2) do |i|
      if num % i == 0 && prime?(i)
        prime = i
        break
      end
    end
    prime    
  end

  def prime?(num)
    (2..(Math.sqrt(num).round)).none?{|n| num % n == 0}
  end  
end