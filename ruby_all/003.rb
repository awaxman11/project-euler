# Problem 3: Largest prime factor
# http://projecteuler.net/problem=3

# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?

require 'prime'

number = 6008514751435

a = []
b = []

(2...number).each do |i|
  if number % i == 0
    puts i
    a << i
  end
end

puts a







