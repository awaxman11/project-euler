require 'pry'
# Problem 20: Factorial digit sum
# http://projecteuler.net/problem=20

# n! means n × (n − 1) × ... × 3 × 2 × 1
# For example, 10! = 10 × 9 × ... × 3 × 2 × 1 = 3628800,and the sum of the digits in the number 10! is 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.
# Find the sum of the digits in the number 100!


class FactorialSum
  attr_accessor :original_num

  def initialize(num)
    @original_num = num
  end

  def get_factorial
    (1..self.original_num).inject(:*)
  end

end

a = FactorialSum.new(100)
# binding.pry
b =a.get_factorial
c = b.to_s.split("")
d = c.collect {|num| num.to_i}
e = d.inject(:+)
puts e


