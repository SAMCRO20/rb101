## More Methods
 # Enumerable#any?
 - read ruby documentation
 - .any? returns boolean, evaluating the blocks return before assigning the method's return

 # Enumerable#each_with_index
 - just like each, but doesn't worry about the return value
 - requires a second parameter (duh!)\
 - with a hash, the first argument now represents a key and value
 - returns the original calling collection

 # Enumerable#each_with_object
 - takes a method argument
 - block takes two arguments
  -- first block represents the current element
  -- second block argument represents the collections object that was passed in as an argument to the method
 - for Hash, it's possible to use parentheses to capture the key and value in the first argument

 # Enumerable#first
 - doesn't take a block
 - does take optional argument which represents the number of elements to return.

 - .first on a hash means order of insertion into hash
 - .first return value on a hash is a nested array. Change back with .t0_h
 - Most often used with arrays

 # Enumerable#include
 - doesn't take a block but does require one argument

[1, 2, 3].include?(1)
 => true

  - only checks the keys, not values, on a hash
  - basically a Hash#key method and acutally *.key?* is used instead over *.has_key?*
  -