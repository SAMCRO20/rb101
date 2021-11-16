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
```ruby
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
```ruby
['arc', 'bat', 'cape', 'ants', 'cap'].sort
# => ["ants", "arc", "bat", "cap", "cape"]
```

*Array#<=>*
```ruby
[['a', 'cat', 'b', 'c'], ['b', 2], ['a', 'car', 'd', 3], ['a', 'car', 'd']].sort
# => [["a", "car", "d"], ["a", "car", "d", 3], ["a", "cat", "b", "c"], ["b", 2]]
```
## The sort_by method
-Usually called with a block
```ruby
['cot', 'bed', 'mat'].sort_by do |word|
  word[1]
end
# => ["mat", "bed", "cot"]
```
the block sorts based off the index at 1

If used on a hash, you would need two arguments passed to the block (the key and value)
```ruby
people = { Kate: 27, john: 25, Mike:  18 }

people.sort_by do |_, age|
  age
end
# => [[:Mike, 18], [:john, 25], [:Kate, 27]]
```
easy to use when using integers, but what about the keys?

### Symbol#<=>
- when used, the symbols (as keys) are compared *after* to_s is called on them
- It then returns the name or string corresonding to the symbol
*The problem will be when the keys are a mix of capitals and not, easily corrected*
```ruby
people.sort_by do |name, _|
  name.capitalize
end
# => [[:john, 25], [:Kate, 27], [:Mike, 18]]
```

## Other methods which use comparison
- min
- max
- minmax
- min_by
- max_by
- minmax
All in the [Enumerable Ruby Docs](https://ruby-doc.org/core-3.0.2/Enumerable.html)

**Comparison is at the heart of sorting**