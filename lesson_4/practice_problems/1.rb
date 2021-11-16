flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

# turn array into a hash where the names are keys and hte values are the positions in the array

# Explicit
# - given array full of strings
# - turn to hash each element being the keys
# - each value is the position(index) in the array

# Implicit
# - need an empty array to store
# - need to reference index

# Consult array doc for each_with_index possibly

flinstones_hash = {}
flintstones.each_with_index do |name, index|
  flinstones_hash[name] = index
end

p flinstones_hash
