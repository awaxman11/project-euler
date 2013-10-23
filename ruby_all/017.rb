# Problem 17: Number letter counts
# http://projecteuler.net/problem=17

# If the numbers 1 to 5 are written out in words: one, two, three, four, five, then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.
# If all the numbers from 1 to 1000 (one thousand) inclusive were written out in words, how many letters would be used? 
# NOTE: Do not count spaces or hyphens. For example, 342 (three hundred and forty-two) contains 23 letters and 115 (one hundred and fifteen) contains 20 letters. The use of "and" when writing out numbers is in compliance with British usage.
require 'pry'

class Numtoword
  attr_accessor :num, :word
  @@count = 0
  @@all_numbers = []

  def initialize(num)
    @num = num
    @word = []
  end

  def self.count
    @@count
  end

  def self.all_numbers
    @@all_numbers
  end

  def singles
    case self.num
    when 1
      @word << "one"
    when 2
      @word << "two" 
    when 3
      @word << "three"
    when 4
      @word << "four"
    when 5
      @word << "five"
    when 6
      @word << "six"
    when 7
      @word << "seven"
    when 8
      @word << "eight"
    when 9
      @word << "nine" 
    when 0

    else
      puts "error"
    end
  end

  def teens
    case self.num
    when 10
      @word << "ten"
    when 11
      @word << "eleven" 
    when 12
      @word << "twelve"
    when 13
      @word << "thirteen"
    when 14
      @word << "fourteen"
    when 15
      @word << "fifteen"
    when 16
      @word << "sixteen"
    when 17
      @word << "seventeen"
    when 18
      @word << "eighteen" 
    when 19
      @word << "nineteen" 
    else
      puts "error"
    end
  end

  def tens
    case self.num
    when 20
      @word << "twenty"
    when 30
      @word << "thirty" 
    when 40
      @word << "fourty"
    when 50
      @word << "fifty"
    when 60
      @word << "sixty"
    when 70
      @word << "seventy"
    when 80
      @word << "eighty"
    when 90
      @word << "ninety"
    else
      puts "error"
    end
  end

  def counter
    length = @word.join.length
    @@count += length
  end

  def add_to_large_array
    @@all_numbers << @word
  end

end

(1..4).each do |num|
  number = Numtoword.new(num)
  if number.num > 99
  elsif number.num > 19
  elsif number.num == 10
  else 
    number.singles
  end
  number.counter
  number.add_to_large_array
end

total = Numtoword.count
puts total


