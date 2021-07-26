# public_methods(all=true) → array
s = 'abc'
puts s.public_methods.inspect 
# prints list of all public methods available to string and those in of its parent and modules of parents
puts s.public_methods(all=false).inspect # (all=true)
# setting all to false just prints the public_methods to the object 