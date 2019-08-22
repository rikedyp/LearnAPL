# APL Short Course

Intro - content - assessment for ≥ 3 topics
 + larger task to finish

APL is a mathematical notation for writing programs.  
It is a programming language.

TODO: There may be a clear break where being in the interpreter is easier / more useful / necessary.
      Find the break point.

TODO: Have others attempt to solve problem sets, see what alternative solutions reveal

## 1. Basics / mathematics
Arithmetic|Arrays|Scalar extension|Emptiness|Index generator|⎕A

### 1.1 APL as a pocket calculator
```APL
      2+2  
4      
      2×2  
4      
      2*2  
4      
```
What do these do?
```APL
+ - × ÷ * ⍟ | ⌈ ⌊
```
Negative numbers are represented by a high minus ¯ (TI calculators do this)

#### Problem set 1. (the type of maths / word problems you would get when learning this in school - a quick refresher)

### 1.2 Arrays
In APL, all data are arrays. Arrays contain numeric scalars, character scalars or more arrays.
```APL
      1 2 3 4 5
      'APPLE'
'hello, world'
```
Functions take data as arguments and produce data as results.
Functions take arrays as arguments and produce arrays as results.
1 2 3 + 4 5 6

Arrays are hyperrectangular (box-shaped or n-orthotopic) (https://en.wikipedia.org/wiki/Hyperrectangle)
We can create an array of any shape (up to 15 dimensions and/or the limits of the computer)
Use the reshape function ⍴ to transform data to its right into the shape described on its left:
      3 3 ⍴ 3
      2 3 4 ⍴ 1 2 3
The shape describes planes-columns-rows
(https://cdn-images-1.medium.com/max/2000/1*_D5ZvufDS38WkhK9rK32hQ.jpeg)
TODO - create own image that looks just like this OR get permissions

The shape ⍴ function returns a vector of the length of each dimension
⍴1 2 3
3

The shape of a 2D array (matrix) is a 2-element vector
The shape of a 3D array is a 3-element vector
etc...

If the number of elements in the target shape is greater than the number of elements in the data array, elements are recycled from the beginning:
      3 3 ⍴ 3 5 7
etc...

The shape of a scalar is the empty numeric vector ⍬
The empty character vector is ''

The shape of the shape of an array returns a 1-element vector describing the rank.
From version 14, ≢⍴ returns the scalar rank of an array.
The corollary is that all data are arrays.
Scalar is rank-0
≢⍴3954
Vector/list is rank-1
≢⍴1 2 3 4
Matrix/table is rank-2
≢⍴3 3⍴0
Cuboid/cube is rank-3
≢⍴2 3 4⍴'APL'
Hyperrectangles all the way up rank-4, 5, 6.... 15
≢⍴2 3 2 5⍴1 7 4 5 2

### 1.3 Functions take arrays as arguments and produce arrays as results
Scalar functions apply element-wise between arrays.
Arrays must be conformable. This means either:
- arrays have the same shape
- one array has 1 element
5 5 5 + 0 5 10
5 + 0 5 10
⍝(,1)+1 2 3
⍝(1 1⍴3) + 1 2 3
Otherwise, RANK or LENGTH ERROR

### 1.4 Data generation
For the sake of convenience in the next problem set, we now introduce the index generator ⍳  
⍳10

#### Problem set 2. Functions applied to arrays
Use reshape to generate the 3×3 identity matrix
Generate the first N odd numbers
⍴vec+1 vs. 1+⍴vec

profit←price-cost
total profit

A company places its profits in a bank account with a 3% annual interest rate
Provided a list of prices, a list of costs and a table of sales (or list of annual sales), calculate balance of profit account after N years

## 2. Operators make arrays fun and easy to use!™

### 2.1 Reduction
/ operator inserts a function between elements of an array
+/1 2 3 4 5

#### Problem set 3. Baby's first operators
Sum the numbers from 1 to 100
Find the greatest number in vec
Find the lowest number in vec

## 3. Syntax: symbols have a double meaning
The grammatical rules of APL are simple:
Functions take arrays as arguments and produce arrays as results
Functions take the result of statements to their right as their argument
Functions can also take a left argument.
1 - 2
\- 4 (implies 0-4)
2\*3
\*3 (base of natural log)
3×5
×¯10+⍳20 (signum)

## 4. Arrays contain arrays
Previously stated arrays contain numeric, character or array data.
The fundamental character data is a scalar (rank-0 array)
The fundamental numeric data is a scalar (rank-0 array)
So really arrays just contain arrays.
Arrays are either simple or nested.

### 4.1 Simple vs. nested arrays
('this' '' 'that')∊⊂''
simplenum←⍳10
simplechar←⎕A
array←3 3⍴0 1 (1 2 3) 'APL' ('nested' ('array' 2 3)) 'A' (3 4 5) 'PL' (6 7 8)

## 5. Selection and indexing: Finding stuff in and getting stuff out of arrays

### 5.1 Enlist / membership / find
∊ returns a list of the scalar elements in the leaf nodes of an array

### 5.3 Compress / replicate
/ is an operator and a function, depending on context.
/ with numeric data on the left and an array on the right replicates data along the trailing axis.
1 1 0 1 0 / 'APPLE'
1 2 3 4 5/'APPLE'
{⍵/⍳⍴⍵}1 1 0 1 0 (students attempt to derive ⍸)

### 5.4 Square bracket indexing
This syntax has been adopted by other programming languages.
'APPLE'[1 2 4]
'APPLE'['APPLE'⍳'APL']

## 6. User defined functions
In APL, many things can be achieved without writing "programs"
[EXAMPLES]
Obviously, more involved tasks require the use of programs / algorithms
Dfns.

#### Problem set N. Actual programs (combined knowledge)
  Find the outliers in vec
- Basic syntax
- Assignment
- '+ × * / ÷ ≢ ⍴ < > ⍸'
- plus, times, power, compress, reduce, divide, tally / shape, less / greater than, where
- ⍸ optional
  - {⍵/⍳⍴⍵}

  Which day of the week is N days from now?
- Stranding / nested vectors
- '+ [] | ∊ ⊂'
- Intermediate assignment

  Young middle old
  '+ / ∘. <≤≥> [] ⊃'
- Plus reduce
- Stranding / nested vectors
- Outer product
- Greater / less than / equal to logical comparison
- Pick
- Indexing

#### Final task: TODO - create / choose / 

### Not-yet-included required knowledge
- Outer product ∘.
  - Addition table
  - Multiplication table
  - Powers table
  - Log table
- Big numbers (E notation)
- Grade
- Enlist
- Ravel / table
- Catenate / first
- Compress / replicate
  - (colour∊⊂'orange')/wingspan
  - 1 1 0 0 1 0/'APPLE'
- Take / drop
- Enclose
- Partition enclose
- Syntax
- Dfns/Tradfns/Tacit ??
- Logic / comparisons
  - ∨\/
  - ∧\/

### Frequently used session things
- Ctrl+Shift+Backspace
- Ctrl+Enter

#### Potential problems / problem domains
Ideally problems domains as broad as possible
- Formula translation
- Order of operations
  - Spot the difference
    - `(x*2) - (2×x×y) + y*2` 
  - `2 2 + 2 2`
- Arithmetic / algebra
  - Quadratic equation / polynomials
- Statistics / classification
- Logical / relational functions
  - Odd or even?
  - Multiple of 2?
  - Multiple of 3 or 5?
  - Fractional part of numbers
  - 321='321'
  - Set C to 16 if A>B, otherwise 15
  - Set C to 42 if N>Min and N<Max, else 50
- Text processing
  - Chinese takeaway menu outer product
- Image processing
- ASCII art
  - Bar chart
  - Fractal image?
- Geometry
- Finance / business
  - Budgeting
  - Cash-flow forecasting
  - Break-even analysis
    - Cost, price, how many do I need to sell to break even?
  - Ratio analysis?
- Electronics
  - Convert between binary, decimal, hexadecimal and BCD
  - Period to frequency conversion ÷
  - DeMorgan's law
  - 

- Something like DyalogIntro3 p.105,107
