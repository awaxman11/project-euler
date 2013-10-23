# Problem 6: Sum square difference
# http://projecteuler.net/problem=6

# The sum of the squares of the first ten natural numbers is,
# 1^2 + 2^2 + ... + 10^2 = 385
# The square of the sum of the first ten natural numbers is,
# (1 + 2 + ... + 10)^2 = 55^2 = 3025
# Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.
# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

# Find the sum of the squares of the first 100 natural numbers

require 'pry'


def sum_of_squares(n)
  sum = 0
  (1..n).each do |num|
    sum += num**2
  end
  return sum
end

# Find the square of the sum of the first 100 natural numbers

def square_of_sum(n)
  sum = 0
  (1..n).each do |num|
    sum += num
  end
  return sum**2
end


# Find the difference btwn the sum of the squares and the square of the sums

x = sum_of_squares(100)
y = square_of_sum(100)
puts(y - x)