a = %w(a b c d e)
puts a.fetch(7)                       
# raises an exception 
# index of 7 is out of array bounds
puts a.fetch(7, 'beats me')           
# beats me, as default value since the index is out of array bounds
# this is a way to prevent the exception being raised.
puts a.fetch(7) { |index| index**2 }  
# 49, since an invalid index is referenced, the block is executed