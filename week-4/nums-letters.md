What does puts do?

Writing in Ruby, 'puts' will print the output of a program with a new line.
It's slightly different from 'print', which prints the output on the same line,
and 'p', which will return (or apply all the changes in) the code AND print it
on a new line. ('puts' and 'print' don't return the code.)

What is an integer? What is a float?

An integer is a whole number, i.e. 0, 8, -2, 37. A float is a number with
a 'floating decimal point' (shortened to 'float'), i.e. 2.5, 88.4, -1.2, 0.8.

What is the difference between float and integer division? How would you explain
the difference to someone who doesn't know anything about programming?

Float and integer division refer to two different modes through which a computer might calculate basic arithmetic. If given integers, a computer will return integers. In a situation like that, 5/2 will return 2, not 2.5. Meanwhile, float division will include partial numbers, like so: 5.0/2.0 = 2.5.


Ruby, how many hours are there in a (non-leap) year?
```ruby
puts (24 * 365)
```

Ruby, how many minutes are there in a decade?
```ruby
puts ((24 * 60) * 365) * 10
```