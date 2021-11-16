## Sorting ##

- mostly performed on arrays
- accessed via indices so order is important

# Definition
- Sorting is setting the order of the items in a collection according to a certain criterion

# Array#sort
 - return value is the new array
  *Comparison is at the heart of how sorting works*

  - how does it sort though?
# <=>
- "spaceship" operator
**Any object in a collection that we want to sort must implement a <=> method**
- compares objects of the same type and returns a -1, 0, 1 depending on whether the first object is less than, equal to, or greater than the second object(nil if they cannt be compared)
- throws argumenterror if nil is returned

# ASCII Table
- this is how you compare String#<=>
- determine a string's ASCII position by calling ord on the string

# The sort method
- 
