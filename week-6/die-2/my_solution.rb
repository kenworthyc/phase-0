# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself].
# I spent [1.5] hours on this challenge.

# Pseudocode

# Input: An array of strings
# Output: Randomized array of strings
# Steps:
=begin
  1. create a program for a kind of die (with letters, not numbers)
  2. note that its input will be an array of strings
  3. define a variable that functions throughout the whole program, assigned to the sides of the die
    a. the number of sides depends on the length of the input array
  4. create an action that the program will execute to randomize the strings
    a. create a variable that returns a random number between 0 and the length of the array
    b. assign the randomized number to access that index of the array
    c. return the string at that index

=end



# Initial Solution
=begin
class Die

  def initialize(labels)
    @sides = labels.length
    @labels = labels

    unless @sides > 0
      raise ArgumentError.new("Your die needs more than 0 sides!")
    end
  end

  def sides
    return @sides
  end

  def roll
    puts "Rolling die..."

    unless @sides > 1
      p @labels[0]
    end

    index_length = @sides - 1

    index = rand(0..index_length)

    letter = @labels[index]

    puts "You rolled a #{letter} on your #{@sides}-symboled die."

    p letter
  end
end
=end


# Refactored Solution


class Die
  def initialize(labels)
    @sides = labels.length
    @labels = labels

    unless @sides > 0
      raise ArgumentError.new("Your die needs more than 0 sides!")
    end
  end

  def sides
    @sides
  end

  def roll
    puts "Rolling die..."

    p @labels.sample

  end
end


# Reflection
=begin
What were the main differences between this die class and the last one you created
 in terms of implementation? Did you need to change much logic to get this to work?
In this die class, the random number had to apply to an array element, not
directly to a Fixnum. That meant the code needed a little more coaxing to return
the suitable random element than it had needed to return a random number in a
range. More or less, I had to move the random number generator range from the
number of sides to the number of array indices (starting with 0).

What does this exercise teach you about making code that is easily changeable or modifiable?
Having a template to work from is far simpler than not, certainly. And finding a
 refactor-friendly method makes altering the code far easier; I was able to test
 the different effects of .shuffle and .sample quickly after I implemented them.

What new methods did you learn when working on this challenge, if any?
I learned about .shuffle and I used .sample. In my research, I found it
interesting that .shuffle takes more time to complete than .sample, since
.shuffle randomizesthe entire array, whereas .sample plucks one random number
 from the index.

What concepts about classes were you able to solidify in this challenge?
The scope of instance variables was ironed out more; I think it strange that
the argument/s in the initialize constructor aren't automatically instance
variables, since those are the main inputs that would be modified in Class
methods. I also clarified the correct use of driver code when testing classes;
in the first challenge I didn't quite have a feel for the .new constructor,
and I want to learn a little more about it.

=end
