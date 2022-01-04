name = 'Bob'
save_name = name
name = 'Alice'
puts name, save_name
# Alice
# Bob

name = 'Bob'
save_name = name
name.upcase! #mutated name which changed save_name as well
puts name, save_name
# BOB
# BOB