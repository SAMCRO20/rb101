# Problem
  # method takes array of numbers
  # returns array with same number of elements
  # each element has the running total from the original array

# Examples
  # running_total([2, 5, 13]) == [2, 7, 20]
    # first num, sum of first and second, sum of 1st second and third...
  # running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
  # running_total([3]) == [3]
  # running_total([]) == []

# Data Stucture
  # input - array
  # output - array
  # index 0 -- same, index 1 -- sum of 0 and 1

# Algo
  # def running_total
  # take array, write block over it to take each element 
  # and sum if from the initial element

def running_total(array)
  sum = 0
  array.map { |value| sum += value }
end

running_total([2, 5, 13]) #== [2, 7, 20]
running_total([14, 11, 7, 15, 20]) #== [14, 25, 32, 47, 67]
running_total([3]) #== [3]
running_total([]) #== []