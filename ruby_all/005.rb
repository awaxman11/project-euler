# Problem 5: Smallest multiple
# http://projecteuler.net/problem=5

# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
x = 20

while true 
  counter = 0
  (1..20).each do |num|
    counter += 1 if x % num == 0
    puts x if counter == 20
    break if counter == 20
  end
  break if counter == 20
  puts x
  x+=20
end