What does puts do?

Writing in Ruby, 'puts' will print the output of a program
with a new line. It's slightly different from 'print', which
prints the output on the same line, and 'p', which will return
(or apply all the changes in) the code AND print it
on a new line. ('puts' and 'print' don't return the code.)

What is an integer? What is a float?

An integer is a whole number, i.e. 0, 8, -2, 37. A float is
a number with a 'floating decimal point' (shortened to 'float'),
 i.e. 2.5, 88.4, -1.2, 0.8.

What is the difference between float and integer division? How would you explain
the difference to someone who doesn't know anything about programming?

Float and integer division refer to two different modes through
 which a computer might calculate basic arithmetic. If given integers,
  a computer will return integers. In a situation like that, 5/2
  will return 2, not 2.5. Meanwhile, float division will include
  partial numbers, like so: 5.0/2.0 = 2.5.


Ruby, how many hours are there in a (non-leap) year?
```ruby
puts (24 * 365)
```

Ruby, how many minutes are there in a decade?
```ruby
puts ((24 * 60) * 365) * 10
```

4.2.1 link:  https://github.com/kenworthyc/phase-0/blob/master/week-4/defining-variables.rb

4.2.2 link:  https://github.com/kenworthyc/phase-0/blob/master/week-4/simple-string.rb

4.2.3 link:  https://github.com/kenworthyc/phase-0/blob/master/week-4/basic-math.rb

How does Ruby handle addition, subtraction, multiplication, and division of numbers?

Given `puts n (+ or - or *) m`, Ruby will add, subtract, and multiply n and m as a calculator would, and print the
answer to the next line. Ruby will divide according to integer division.

What is the difference between integers and floats?

An integer is a whole number. A float is a number with a
decimal point, for which Ruby will use float division
(whereas Ruby's default is integer division).

What is the difference between integer and float division?

Float division gives the exact value of the quotient,
interpreted with decimal values. Integer division
evaluates only how many times the dividend goes into
the divisor, and no more (and so all its quotients are integers).

What are strings? Why and when would you use them?

A string is any number of characters (letters, numbers,
etc) set between quotes. To keep track of a string, Ruby
needs a string to be saved as a variable, like this:
`my_string = "I'm a string!"`. Ruby can do things with
`my_string` which it can't with a normal string, like add
to it or subtract from it. Strings are great for whenever
you need to print or keep track of things in a program that
don't make sense as numbers– for instance someone's name!

What are local variables? Why and when would you use them?

Local variables are defined and exist within one interaction
in Ruby. If they're in a method, they can't be used outside of
that method. The locality of variables makes the overall program
'smaller', since it doesn't have to remember that variable
outside of the one little method envelope.  This also keeps
the program and its functions organized: all the different
things the program does are put into different envelopes,
each with just what they need to perform their task.  So, you
 would use them when you don't need a global task to be
 performed many times— just one specific variable to mean one
 thing for this one task.

How was this challenge? Did you get a good review of some of the basics?

It was good, but I totally overthought what String methods
were, and the webpage of Ruby documentation is infuriatingly
 jargony and dense. 4.2.2 took me a while to figure out,
 but once I got it, it was painfully obvious and much simpler
  than I thought.