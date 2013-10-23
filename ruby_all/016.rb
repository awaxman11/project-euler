# Problem 16: Power digit sum
# http://projecteuler.net/problem=16

# 
# 2^15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.
# What is the sum of the digits of the number 2^1000?

require 'pry'

num = 2**1000
num = num.to_s
num = num.split("").map {|i| i.to_i}
sum = num.inject {|sum, i| sum + i}
puts sum
