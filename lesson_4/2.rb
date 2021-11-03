ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

# Add up all of the ages from the hash

# explicit
# - collect all of the key as integers
# - sum all integer ages

# implicit
# - collect them in an array and sum the array

# check documentation on sum and taking values from hashes
# .values returns an array and you can call .sum to take each element and sum it up. Straight-forward
sum_of_ages = ages.values.sum
 
# or

# total_ages = 0
# ages.each { |_,age| total_ages += age }
# total_ages # => 6174

# or

# ages.values.inject(:+) # => 6174

p sum_of_ages
