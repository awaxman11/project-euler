# Problem 9: Special Pythagorean triplet
# http://projecteuler.net/problem=9

# A Pythagorean triplet is a set of three natural numbers, a <b <c, for which,
#  a^2 + b^2 = c^2
# For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.
# There exists exactly one Pythagorean triplet for which a + b + c = 1000.Find the product abc.


require 'pry'


 # a = m^2 - n^2
 # b = 2mn
 # c = m^2 + n^2 

def create_triplet(a,b,c)
  if (a**2 + b**2 == c**2)
    puts a*b*c if a+b+c == 1000
  end
end


a = 1

while a < 500
  b = 1
  c = 1
  while b < 500
    c = 1
    while c < 500
      create_triplet(a,b,c)
      c += 1
    end
    b += 1
  end
  a +=1
end



