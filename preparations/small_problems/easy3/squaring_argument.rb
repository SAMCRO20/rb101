def multiply(a, b)
  a * b
end

def square(number)
  multiply(number, number)
end

def exponentiation(base, power)
  multiply(base, 1) ** power
end

p square(16)
square(5) == 25
square(-3) == 9
exponentiation(2, 3) == 8