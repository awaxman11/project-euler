# Problem 10: Summation of primes
# http://projecteuler.net/problem=10

# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
# Find the sum of all the primes below two million.

require 'prime'

a = Prime.take(148933)
puts a.inject { |sum, n| sum + n }  
