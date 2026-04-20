Pre Assignment Work
type out equation and then "CTRL + ENTER"

3*2^2
3+2-1+4
(3*2)^2
3+2-1+4
3+2-(1+4)

If R sees incomplete math, it waits: ex -> "> 3 + "
The "+" prompt means "you didn't finish your expression"

To cancel: "CTRL + C"

Function Calls/Structure: 
"function_name(argument)"

examples:
  cos(pi)
  sqrt(9)
  log(10)
  factorial(5)
  
Built-ins you must know:
  sin()
  cos()
  exp()
  log()
  sqrt()
  abs()
  factorial()
  
Exercise Answers (Functions)
cos(pi/4)^2

exp(log(pi)+3)

Vectorized Semantics - This is what makes R different from many languages

R naturally works with vectors (list of numbers) - not just single values

Creating Vectors -> Sequence Operator:
  1:10 -> result: [1] 1 2 3 4 5 6 7 8 9 10
The [1] means "this linestarts at element 1"

R applies functions to every element
ex: sqrt(1:5) computes ->
  sqrt(1)
  sqrt(2)
  sqrt(3)
  sqrt(4)
  sqrt(5)
  
> This is a block quote
  
Code block delimiter: ```code``` (Triple back ticks on a new line)

Bold text: **text**
  
Packages in R
(1) Packages need to be installed only the first time
(2) Packages need to be loaded with library() every time

FALSE STATEMENTS ^^: INstall every time; remain loaded after restart

Quarto will not run R code after rendering Markdown -> Rendering actually exectures code first, then product output

Additional Questions from quiz:
  
  2 * (11 - 5)

use exp() for e^x:
  exp(1 - 2*8)*5 + exp(-6 + 1.5*6.6)


88 * (1 + sqrt(18))
use "*" and space or will receive an ERROR

1 + sqrt(2 + log10(3 + (3/(5 + (2^3)))^4))

28/30
