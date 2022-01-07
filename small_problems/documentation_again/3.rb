def my_method(a, b = 2, c = 3, d)
  p [a, b, c, d]
end

my_method(4, 5, 6)

# b and c have default values
# if there were only two arguments sent, b and c would be 2 and 3, respectively
# since 3 arguments are sent, a, b, and d will be changed, leaving c to stay defaulted to 3
# [4, 5, 3, 6]