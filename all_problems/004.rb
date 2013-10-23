# Problem 4: Largest palindrome product
# http://projecteuler.net/problem=4

# 
# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
# Find the largest palindrome made from the product of two 3-digit numbers.
require 'pry'

x = 999
y = 999

while x > 900
  y = 999
  while y > 900
    num = x * y 
    puts num if num.to_s == num.to_s.reverse
    y -= 1
  end
  x -= 1
end

