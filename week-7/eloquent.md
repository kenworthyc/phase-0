INTRO //
Did you learn anything new about JavaScript or programming in general?

I found it hilarious that JavaScript's name was hanging on the coattails of Java. The history of Javascript and new releases and versions was interesting. I understood all the useful compressions that programming languages do for programmers, and like the idea behind it— that languages do the boring tasks so programmers can get to the interesting ones.

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
In both, variables need values! Otherwise they're undefined, nothing, nada.


CHAPTER 3 //
What are the differences between local and global variables in JavaScript?
Variables created inside functions are local to those functions, while variables created outside any function (global variables) are accessible by any function in the program. However, local variables will 'override' global variables if the names are shared; the specificity of local variables takes precedence over global variables inside a function.

When should you use functions?
Probably very often! Functions are similar to methods in Ruby, and they're what allow the programmer to give the computer concrete instructions to perform actions. They take arguments and have the ability to manipulate those arguments according to the instructions the programmer gives. That means— whenever there's a process that has to be repeated, you may as well let the computer take the work and make a function for it.

What is a function declaration?
Function declarations are a 'direct' form of creating functions. They are not assigned to a variable within a program, and this distinction means that function declarations are loaded as soon as the program is run. Declared functions can be called before their actual code in the program. (Functions which are assigned to variables, called function expressions or function values, are evaluated in the order it is called in the program.)


CHAPTER 4 //

What is the difference between using a dot and a bracket to look up a property? Ex. array.max vs array["max"]
array.max directly accesses the property specifically named 'max' for array. array[max] thinks: 'what's in between these brackets?', does some calculation, and comes up with 'max'. array[max] could be expressed as array['m'+'a'+'x'], but this wouldn't work if you tried array.'m'+'a'+'x'. If a property is a string, you must use brackets, because the dot operator can only call on valid variable names, which don't include strings.

What is a JavaScript object with a name and value property similar to in Ruby?
Array.length is an object/property with an exactly similar object/property in Ruby.