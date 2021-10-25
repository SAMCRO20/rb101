The PEDAC Process

## P: Understanding the Problem
* possibly the most important step
- Establish the rules and define the boundaries of the Problem
  - Assess available information
  - Restate Explicit requirements - clearly stated
  - Identify Implicit requirements - extrapolated based on understanding 
- Spend enough time. Don't rush this step.

**General example**

Given a string, produce a new string with every other word removed.

-Explicit requirements
  -Input: string
  -Output: new string
  -Remove every other word from the input string

- Questions:
  - What do we mean by every other word?
  - How do we define a word in this context?
    - Words are delimited by spaces

## E: Examples and Test Cases

- Can confirm/refute assumptions
- Help to answer questions about implicit requirements
- Act as assertions which help to codify the rules and boundaries

## D: Data Structures

- Help to reason with data logically
- Help  to interact with data at implementation level
- Thinking in terms of data structures is part of the problem solving process
- Data structures are closely linked to algorithms
  - Set of steps from input to output
    - Involves structuring data in a certain way
## A: Algorithms

- A logical sequence of steps for accomplishing a task or objective
  - Closely linked to data structures
  - Series of steps to structure data to produce the required output
- Stay abstract/ high-level
  - Avoid implementation detail
  - Don't worry about efficiency for now


## C: Implementing a solution in Code

- Translating solution algorithm to code
- Think about the algorithm in context of programming language
  - Language features and constraints
  - Characteristics of data structures
  - Built in functions/ methods
  - Syntax and coding patterns
- Create test cases
- Code with intent

## Sum Even Number Rows

Imagine a squence of consecutive even integers beginning with 2. The integers are grouped in rows, with the first row containing one integer, the second row two integers, the third row three integers, and so on. Given an integer representing the number of a particular row, return and integer representing the sum of all integers in the row.

**Rules & Requirements**
- Sequence of even integers
- sequence begins with two
- integers are consecutive
- sequence is grouped into Rows
- each row is incrementally larger: 1, 2, 3, ...
- Row 'number' equals the number of elements in the row
  - row 1 has 1 element, row 2 has 2 elements
- input: a single integer
  - identifies a 'row,' with is a subset of a squence of integers
-output: a single integer
  - the sum of the integers in the row identified by the input integer

-Sequence:
2, 4, 6, 8, 10, 12, 14, 16, 18, ...

2
4, 6
8, 10, 12
14, 16, 18, 20
...

- How do we create the structure?

**Examples**

row number: 1 --> sum of integers in row: 2
row number: 2 --> sum of integers in row: 10
row number: 4 --> sum of integers in row: 68

2 --> 2
4, 6 --> 10
14, 16, 18, 20 --> 68

**Data Structures**

2
4, 6
8, 10, 12
14, 16, 18, 20
...

- Overall structure represents a sequence as a whole
- Individual rows with the overall structure
- Individual rows in a set order in context of the sequence
- Individual rows contain integers
- Can assume that integers are in a set order in the context of the sequence

[
  [2],
  [4, 6],
  [8, 10, 12],
  [14, 16, 18, 20],
  ...
]

**Algorithm**

1. Create an empty 'rows' array to contain all of the rows
2. Create a 'row' array and add it to the overall 'rows' array
3. Repeat step 2 until all the necessary rows have been created
  - All rows have been created when the length of the 'rows' array is equal to the input integer
4. Sum the final row
5. Return the sum of the final row

*Problem: Create a row*

Rules:
- Row is an array
- Arrays contain integers
- Integers are consecutive even numbers
- Integers in each row form part of an overall larger sequence
- Rows are of different lengths
- Input: the information needed to create the output
 - The starting integer
 - Length of the row
- Output: the row itself: '[8, 10, 12]'

Examples:
start: 2, length: 1 --> [2]
start: 4, length: 2 --> [4, 6]
start: 8, length: 3 --> [8, 10, 12]

Data structures:
- An array of integers

Algorithm:
1. Create an empty 'row' array to contain the integers
2. Add the starting integer
3. Increment the starting integer by 2 to get the next integer in the sequence
4. Repeat steps 2 and 3 until the array has reached the correct length
5. Return the 'row' array

## Final Thoughts

- Not a completely linear process
- Be prepared to move back and forward between the steps
- Switch from implementation mode or astract problem solving when necessary
- Don't try to problem solve at the code level