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



## D: Data Structures
## A: Algorithms
## C: Implementing a solution in Code

## Sum Even Number Rows

Imagine a squence of consecutive even integers beginning with 2. The integers are grouped in rows, with the first row containing one integer, the second row two integers, the third row three integers, and so on. Given an integer representing the number of a particular row, return and integer representing the sum of all integers in the row.

- Sequence of integers
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