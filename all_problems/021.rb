require 'pry'
# Problem 21: Amicable numbers
# http://projecteuler.net/problem=21

# Let d(n) be defined as the sum of proper divisors of n (numbers less than n which divide evenly into n).
# If d(a) = b and d(b) = a, where a ≠b, then a and b are an amicable pair and each of a and b are called amicable numbers.
# For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22, 44, 55 and 110; therefore d(220) = 284. The proper divisors of 284 are 1, 2, 4, 71 and 142; so d(284) = 220.
# Evaluate the sum of all the amicable numbers under 10000.

class Amicable
  attr_accessor :number, :proper_divisors, :pd_sum
  @@amicable_numbers = []
  
  def initialize(num)
    @number = num
    @proper_divisors = []
    # find_proper_divisors
    # calculate_pd_sum
  end

  def find_proper_divisors
    (1..number-1).each do |num|
      proper_divisors << num if number % num == 0
    end
    proper_divisors
  end

  def calculate_pd_sum
    self.pd_sum = proper_divisors.inject(:+)
  end

  def self.amicable_numbers
    @@amicable_numbers
  end

  def self.reset_amicable_numbers
    @@amicable_numbers = []
  end

end

# a = Amicable.new(220)
# a.find_proper_divisors
# b = a.calculate_pd_sum
# puts b

(2..9999).each do |num|
# (220..221).each do |num|
  # binding.pry
  a = Amicable.new(num)
  a.find_proper_divisors
  b = a.calculate_pd_sum
  c = Amicable.new(b)
  c.find_proper_divisors
  d = c.calculate_pd_sum
  Amicable.amicable_numbers << num if (num == d && d < 10000 && b != num)
end

puts Amicable.amicable_numbers.uniq.inject(:+)



# Make an amicable class

# 0. create an amicable instance for each number between 1 and 1000

# 1. get array of proper divisors

# 2. get sum of proper divisors

# 3. iterate through all amicable instances and check to see if it is an amicable pair 

