def largest_prime_factor(num)
  (Math.sqrt(num).round).downto(2){ |i| return i if num % i == 0 && prime?(i) }
end

def prime?(num)
  (2..(Math.sqrt(num).round)).none?{ |n| num % n == 0 }
end