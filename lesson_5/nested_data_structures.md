# Nested Data Structures
chaining element references to get a value inside of a nested structure
```ruby
arr = [[1, 3], [2]]

arr[0][1] # => 3
```

## Updating collection elements
```ruby
arr = [[1, 3], [2]]
arr[1] = "hi there"
arr                     # => [[1, 3], "hi there"]
```
*this is a destructive action*

So, utilize the chaining element reference to change a value inside
```ruby
arr = [[1, 3], [2]]
arr[0][1] = 5

arr # => [[1, 5], [2]]
```
also adding an additional element to an inner array
```ruby
arr = [[1], [2]]

arr[0] << 3 # adding an integer
arr # => [[1, 3], [2]] 

arr[0] << [3] # adding another array
arr # => [[1, [3]], [2]]
```
also add to an array of hashes
```ruby
arr = [{ a: 'ant' }, { b: 'bear' }]

arr[0][:c] = 'cat'
arr # => [{ :a => "ant", :c => "cat" }, { :b => "bear" }]
```
again, this is destructive

## Variable reference for nested collections
*Wow, a lot to unpack here*
```ruby
a = [1, 3]
b = [2]
arr = [a, b]
arr # => [[1, 3], [2]]

a[1] = 5
arr # => [[1, 5], [2]]

arr[0][1] = 8
arr # => [[1, 8], [2]]
a   # => [1, 8]
```
In both cases above, we modified the object that `a` and `arr[0][1]` both point to 

Review [Variables as Pointers](https://launchschool.com/books/ruby/read/more_stuff#variables_as_pointers)

## Shallow Copy
When I want to copy an entire collection and save the original
- `dup`
: allows objects within the copied object to be modified
```ruby
arr1 = ["a", "b", "c"]
arr2 = arr1.dup
arr2[1].upcase!

arr2 # => ["a", "B", "c"]
arr1 # => ["a", "B", "c"]
```
- `clone`
: works the same way
```ruby
arr1 = ["abc", "def"]
arr2 = arr1.clone
arr2[0].reverse!

arr2 # => ["cba", "def"]
arr1 # => ["cba", "def"]
```
**Remember that the destructive methods were called on the object *within* the array rather than the array itself.**
**Those objects are *shared***

Important to remember *exactly* what level you are working at, especially using variables as pointers

## Freezing Objects
Main difference between `dup` and `clone` is that `close` preservews the frozen state of the object
```ruby
arr1 = ["a", "b", "c"].freeze
arr2 = arr1.clone # preserved
arr2 << "d"
# => RuntimeError: can't modify frozen Array
```
```ruby
arr1 = ["a", "b", "c"].freeze
arr2 = arr1.dup # not preserved
arr2 << "d"

arr2 # => ["a", "b", "c", "d"]
arr1 # => ["a", "b", "c"]
```

You can only freeze mutable objects, not immutable

`freeze` 
:only freezes the object it's being called on
Collections of objects will still be modified
```ruby
arr = [[1], [2], [3]].freeze
arr[2] << 4
arr # => [[1], [2], [3, 4]]

arr = ["a", "b", "c"].freeze
arr[2] << "d"
arr # => ["a", "b", "cd"]
```

*Always be cognizant of the level within the collection at which you are working*