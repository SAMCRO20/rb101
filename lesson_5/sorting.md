# Sorting 

- mostly performed on arrays
- accessed via indices so order is important

## Definition
Sorting
: setting the order of the items in a collection according to a certain criterion

## Array#sort
 - return value is the new array
  *Comparison is at the heart of how sorting works*

  - how does it sort though?
## <=>
- "spaceship" operator
**Any object in a collection that we want to sort must implement a <=> method**
- compares objects of the same type and returns a -1, 0, 1 depending on whether the first object is less than, equal to, or greater than the second object(nil if they cannt be compared)
- throws argumenterror if nil is returned

## ASCII Table
- this is how you compare String#<=>
- determine a string's ASCII position by calling ord on the string

## The sort method
Reading the documentation doesn't help too much with String#<=> and Array#<=>
*Sort process*
```
[2, 5, 3, 4, 1].sort do |a, b|
  puts "a is #{a} and b is #{b}"
  a <=> b
end
# a is 2 and b is 5
# a is 5 and b is 3
# a is 2 and b is 3
# a is 5 and b is 4
# a is 3 and b is 4
# a is 5 and b is 1
# a is 4 and b is 1
# a is 3 and b is 1
# a is 2 and b is 1
# => [1, 2, 3, 4, 5]
```

*String#<=>*
```
['arc', 'bat', 'cape', 'ants', 'cap'].sort
# => ["ants", "arc", "bat", "cap", "cape"]
```

*Array#<=>*
```
[['a', 'cat', 'b', 'c'], ['b', 2], ['a', 'car', 'd', 3], ['a', 'car', 'd']].sort
# => [["a", "car", "d"], ["a", "car", "d", 3], ["a", "cat", "b", "c"], ["b", 2]]
```
## The sort_by method
-Usually called with a block
```
['cot', 'bed', 'mat'].sort_by do |word|
  word[1]
end
# => ["mat", "bed", "cot"]
```
the block sorts based off the index at 1


