# Build a simple guessing game


# I worked on this challenge [by myself].
# I spent [2.5] hours on this challenge.

# Pseudocode

# Input: GuessingGame's input= answer. Player's input= guess. Player's question= solved?
# Output: GuessingGame's output= yes/no if game is solved/not solved. Output for Player= high guess, correct guess, low guess.
# Steps:
=begin
1. Make class for guessing game
2. define actions for game:
  a. start game, take answer as argument
    i. create instance variable for game-winning answer
  b. end game, take correct answer as argument
    i. create true/false method for if the game is solved
    ii. IF player guess == answer, return true
    ELSE return false
  c. evaluate guess, take player's guess as argument
    i. create instance variable for player's most recent guess
    ii. make CASE statement for player's guess
    WHEN guess is higher, return symbol :high
    WHEN guess is lower, return symbol :low
    WHEN guess is correct, return symbol :correct AND end game
3. Add game text
=end

# Initial Solution

class GuessingGame

  def initialize(answer)
    @answer = answer
    puts "Starting game. What number am I thinking of?"
  end

  def solved?
    if @last_guess == :correct
      return true
      puts "You win!"
    else
      return false
    end
  end

  def guess(guess_num)
   @last_guess = guess_num

      case
     when @answer > @last_guess
      return @last_guess = :low
      puts "You guessed low."

     when @answer < @last_guess
      return @last_guess = :high
      puts "You guessed high."

     when @answer == @last_guess
      return @last_guess = :correct
    end

  end

end

game = GuessingGame.new(55)

puts game.guess(78)
p game.solved?
puts game.guess(40)
p game.solved?
puts game.guess(45)
p game.solved?


# Refactored Solution
=begin
I really don't know! I tried to research the Ruby docs, but nothing came up.
I tried to condense if-statements to one line; I don't know how to
condense case statements any further. I think there should be a way to copy
the repeated equalities between @answer and @last_guess, but
when I tried to run the spec with my tries, it doesn't pass.
=end

# Reflection

=begin
How do instance variables and methods represent the characteristics and
behaviors (actions) of a real-world object?
If we had an object like a water pistol, for example, instance variables would be its adjectives (color, size), and methods would be its verbs (point, shoot water).
Instance variables allow classes to adopt certain traits and make that information
available to the entire class; methods perform actions according to that information.

When should you use instance variables? What do they do for you?
Instance variables are available for the whole class to access when they're
defined. This is useful and borderline necessary for a class, so its
attributes can interact and interplay based on the input.

Explain how to use flow control. Did you have any trouble using
it in this challenge? If so, what did you struggle with?

Utilizing flow control is the manipulation of conditions in a program. To create different reactions for the program depending upon the input, the programmer can
use IF...ELSE, UNLESS, UNTIL statements to return different reactions in an
either/or scenario; if there are more than two options, CASE...WHEN statements
respond to multiple possibilities (slightly more purposefully than ELSIFs).
I didn't have any trouble with flow control; defining the order of methods and
variables was more challenging for me.

Why do you think this code requires you to return symbols? What
are the benefits of using symbols?

I can't say for sure, but I think symbols are useful here because the symbol
acts sort of like an instance variable, in that you can check if a variable has
*exactly* the same assignment (high, low, or correct in this case), not just
an equivalent string. Symbols are also evaluate faster than strings.

=end