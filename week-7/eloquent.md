INTRO //
Did you learn anything new about JavaScript or programming in general?

I found it hilarious that JavaScript's name was hanging on the coattails of Java. The history of Javascript and new releases and versions was interesting. I understood all the useful compressions that programming languages do for programmers, and like the idea behind it— that languages do the boring things so programmers can get to the interesting ones.

Are there any concepts you feel uncomfortable with?

I was totally caught off guard by the program broken into binary. I just can't imagine trying to manage information that way. It makes the state of flow seem totally unreachable. I'm lucky not to have to program like that.

CHAPTER 1 //

Identify two similarities and two differences between JavaScript and Ruby syntax with regard to numbers, arithmetic, strings, booleans, and various operators.

JavaScript and Ruby have several very similar mathematical capabilities (they can perform +, -, * / very well, thank you) and follow the order of operations; notable differences in the way they handle numbers include Ruby's preference for integers over floats. JavaScript's divide (/) operation will return a float if the divisor or dividend is a float, whereas Ruby will return the greatest integer that will divide.

JavaScript has more categories for mathematical possibilities than Ruby; it has a value for Infinity or -Infinity, and a special number type NaN, which stands for Not a Number. You'll get this if you 0/0 in JS. Ruby would kind of freak out about it. (Coincidentally, this is the only value in JS which is not equal to itself, which makes sense because it could be any number of things— just not a number.)

Both JS and Ruby have some neat abilities with escape characters in strings; its escape characters include \n for newlines as well as \t for tabs, which I learned about for the first time.

In JS, 'null' and 'undefined' seem to be more widely applied versions of Ruby's 'nil'. They're all values which carry no information (and 'null' is sort of just a duplicate of 'undefined', and it was a slight accident in the language architecture).

CHAPTER 2 //

What is an expression?
A bit of code (in a language such as JS) which produces a value.

What is the purpose of semicolons in JavaScript? Are they always required?
Semicolons are required to define JS statements, but not expressions— expressions are just things, but statements take things and affect them. Sometimes semicolons aren't required, but it's sort of a hazy and complex requirement. If you don't have a semicolon, sometimes the following line will be evaluated as part of the same statement.Better safe than sorry!

What causes a variable to return undefined?
Declaring a variable and not assigning a value to it will make it return undefined

Write your own variable and do something to it in the eloquent.js file.

What does console.log do and when would you use it? What Ruby method(s) is this similar to?
console.log returns the result of a statement or a variable to the screen. It's like Ruby's print or puts!

Describe while and for loops.
While loops accept a condition, and will perform the action in their curly braces (in the 'block') as long as that condition is true. Often the condition will be a counter that is updated every time the loop repeats.
For loops act almost exactly similar to the while loop with a more compact syntax. An english translation might be 'for (this_var; if this_var == true for this condition; do this)'.

What other similarities or differences between Ruby and JavaScript did you notice in this section?
For loops seem to be much more usable/efficient in JS than in Ruby. JS also seems a bit more punctuated, syntactical; parentheses and semicolons are not optional in JS where they are in Ruby.
In both, variables need values! Or else undefined, nothing, nada.

Complete at least one of the exercises (Looping a Triangle, FizzBuzz, of Chess Board) in the eloquent.js file.

CHAPTER 3 //
What are the differences between local and global variables in JavaScript?

When should you use functions?

What is a function declaration?

Complete the minimum exercise in the eloquent.js file.

CHAPTER 4 //
Skip the sections on the Lycanthrope's log, Computing Correlations, and sections from Further Arrayology to the Global Object, but read the chapter summary.

What is the difference between using a dot and a bracket to look up a property? Ex. array.max vs array["max"]

Create an object called me that stores your name, age, three favorite foods, and a quirk in your eloquent.js file.

What is a JavaScript object with a name and value property similar to in Ruby?
