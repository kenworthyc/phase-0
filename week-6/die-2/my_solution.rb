# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself].
# I spent [#] hours on this challenge.

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

