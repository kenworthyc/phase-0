# Die Class 1: Numeric

# I worked on this challenge [by myself]

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input: sides,
# Output: class Die which produces an instance of Die, w number of sides and random output with one of those sides
# Steps:
# 1. create class Die
# 2. define object parameters (sides)
#   a. define instance variable
# 3. define object action in class (roll)
#   a. return random number between 0 and # of sides


# 1. Initial Solution

# class Die
#   def initialize(sides)
#     unless sides >= 1
#       raise ArgumentError.new("Your die needs at least 1 side.")
#     end

#     @sides = sides

#     puts "Formulating die..."
#   end

#   def sides
#     return @sides
#   end

#   def roll
#     puts "Rolling die..."

#       num = rand(@sides) + 1

#     puts "You rolled a #{num} on your #{@sides}-sided die."
#     return num
#   end
# end

# x = Die.new(34254)

# x.roll()

# 3. Refactored Solution

class Die
  def initialize(sides)
    unless sides >= 1
      raise ArgumentError.new("Your die needs at least 1 side.")
    end

    @sides = sides

    puts "Formulating die..."
  end

  def sides
    return @sides
  end

  def roll
    puts "Rolling die..."

      num = rand(1..@sides)

    puts "You rolled a #{num} on your #{@sides}-sided die."
    return num
  end
end

# d = Die.new(34254)

# d.roll()

# 4. Reflection

# What is an ArgumentError and why would you use one?
# An ArgumentError is an error that Ruby can throw, in case the user tries to do
# something impossible with an object or method. They can be used to implicitly
# inform the user of the limits of the object, or the purpose of the program.
# If you were to program a mathematical calculator from scratch, you would be able
# to raise an ArgumentError if the user input was a string, for instance, and
# inform the user that strings cannot function with operators.

# What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
# .rand(max) was new to me, but other than that method, the new aspects of
# Ruby I used were all related to Class creation – instance variables and so
# forth. .rand(max) was easy enough to use; the only problem I had was that the
# range of random numbers included 0. My first solution was to just add 1 to
# the return value, then I found the syntax for range in the Ruby docs, so I
# used that.

# What is a Ruby class?
# A Ruby class is a category into which different types of Ruby Objects will
# fall. Technically, for an Object to be created, it must first belong to a Class;
# the class provides a template for the properties and behavior of the object.
# (Since Ruby is a dynamic Object-Oriented Language, every class in Ruby will
# eventually trace back to the Class 'Object'.)

# Why would you use a Ruby class?
# Classes are useful for creating types of objects that need to behave a certain
# way. There are tons of possible applications— if you were programming an address
# book, a class Person would be useful to accept certain parameters (like address,
# phone number, etc.)

# What is the difference between a local variable and an instance variable?
# A local variable is only defined within one method in a Class, so its scope is
# limited to that method. An instance variable can be accessed anywhere in the
# Class (meaning multiple methods in the Class can access it).

# Where can an instance variable be used?
# An instance variable is accessible anywhere within the Class.