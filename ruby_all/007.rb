# Problem 7: 10001st prime
# http://projecteuler.net/problem=7

# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
# What is the 10 001st prime number?
# require 'prime'
require 'pry'

# Without using prime? method

def is_prime?(num)
  i = num
  test_until = i**(1/2).round
  is_prime = true
  (2..i-1).each do |n|
    is_prime = false if i % n == 0
  end
  return is_prime
end


def find_nth_prime(n)
  counter = 1
  int = 3
  until (counter == n) do 
    counter += 1 if is_prime?(int)
    int += 1
  end
 return int - 1
end

x = find_nth_prime(10001)
puts x

# (1..13).each do |num|
#   puts "#{num} is a prime: #{is_prime?(num)}"
# end

