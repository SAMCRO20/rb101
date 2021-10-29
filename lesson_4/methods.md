## Methods

**.each**
- on a hash** - the main difference between looping and using the each method is the return value is the array

- .each's return value within the method is the last value iterated upon in that method

- puts always return nil
 
 **.select**
 - used instead of a loop, counter and break condition
 - revaluates the *return value of the block*
 - when evaluating the return value, .select only cares about its *truthiness*
 
- .select's return value - returns a new collection containing all of the selected elements

- if a puts is at the end of the method inside a .select method call, the return will, of course, be nil causing the return values to be falsey and not iterated upon


**.map**
- .map is similar to .select
- difference being that map uses the return value of the block to perform transformation instead of selection *always wondered about that*

- places the return value in a new collection after the block is utilized
- *always performs transformation based on the return value of the block*

so:
irb :001 > [1, 2, 3].map do |num|
irb :002 >   num.odd?
irb :003 > end
=> [true, false, true]

and:
irb :001 > [1, 2, 3].map do |num|
irb :002 >   'hi'
irb :003 > end
=> ["hi", "hi", "hi"]