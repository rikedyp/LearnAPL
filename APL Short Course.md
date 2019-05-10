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

The shape of a numeric scalar is the empty numeric vector ⍬
The shape of a character scalar is the empty character vector ''

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
For the sake of convenience in section 2, we now introduce the index generator ⍳
⍳10

#### Problem set 2. Functions applied to arrays
Use reshape to generate the 3×3 identity matrix
Generate the first N odd numbers
⍴vec+1 vs. 1+⍴vec

## N. Prefix and infix - when to talk syntax? (maybe later...)
required for Outliers problem?

## 2. Operators make arrays fun and easy to use!™

### 2.1 Reduction
/ operator inserts a function between elements of an array
+/1 2 3 4 5

#### Problem set 3. Baby's first operators
Sum the numbers from 1 to 100
Find the greatest number in vec
Find the lowest number in vec

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
- Something like DyalogIntro3 p.105,107
