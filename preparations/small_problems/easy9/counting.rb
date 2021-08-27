def sequence(number)
  (1..number).to_a
end

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]

# if argument was negative were allowed in problem
def sequence(n)
  a = 1
  b = n

  a, b = b, a if (n < 0)

  (a..b).to_a
end

p sequence(-2)