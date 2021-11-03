## Method Practice ##

# Practice Problem 1
Identify the return value below...

select performs selection based on the truthiness of the block's return value. In this case the return value will always be 'hi', which is a "truthy" value. Therefore select will return a new array containing all of the elements in the original array.

# Practice Problem 2
How does count treat the block's return value? How can we find out?

count returns truthy values based off block. Look it up in documentation

# Practice Problem 3
What is the return value of reject? Why?

reject returns falsey or nil elements, since puts always returns nil, all values were chosen
*Work on understanding the return value and how it affect the method*