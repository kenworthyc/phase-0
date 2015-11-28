# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:
=begin
# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  make receptacle array
  make 'b i n g o' array
    assign instance var to random letter generator from letter array
  make array w/ range 1..100
    assign instance var to random number generator from range
  return letter + number to array

# Check the called column for the number called.
  iterate over board sub-arrays
    use random letter array index to access each sub-array
      IF random number == board sub-array element...

# If the number is in the column, replace with an 'x'
  ^    reassign array element to 'X'
      END

# Display a column to the console
  after iterating over sub-arrays, return once

# Display the board to the console (prettily)
  then print each sub-array to console
=end
# Initial Solution

# class BingoBoard

#   def initialize(board)
#     @bingo_board = board
#   end

#   def bingo_ball
#     @bingo_ball = []

#     letter_arr = ["B", "I", "N", "G", "O"]
#     @bingo_letter = letter_arr.sample
#     @column_index = letter_arr.index(@bingo_letter)

#     @bingo_number = rand(1..100)

#     p @bingo_ball << @bingo_letter << @bingo_number
#   end

#   def bingo_match

#     @bingo_board.each do |row|
#       if row[@column_index] == @bingo_number
#         row[@column_index] = "X"
#         puts "Match!"
#       else
#         puts "No match!"
#       end
#     end

#     @bingo_board.each do |x|
#       print x
#       puts
#     end
#   end

# end

# Refactored Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
  end

  def bingo_ball
    @bingo_ball = []

    letter_arr = ["B", "I", "N", "G", "O"]
    letter = letter_arr.sample
    @column_index = letter_arr.index(letter)

    @bingo_number = rand(1..100)

    @bingo_ball << letter << @bingo_number

    @bingo_ball.join
  end

  def bingo_match

    @bingo_board.each do |row|
      column_number = row[@column_index]

      # column_number == @bingo_number? column_number = 'X' : column_number

      if @column_number == @bingo_number
        @bingo_number = 'X'
        @announce = "Match!"
      else
        @announce = "No match!"
      end

      print row
      puts
    end
    puts @announce

  end

end

#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
p new_game.bingo_ball
new_game.bingo_match


#Reflection
=begin

How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
Pseudocoding was pretty good for this one— I didn't get stuck anywhere for long,
and the way I approached the issue mostly depended upon Ruby's ability to store an
array member's index after randomly selecting it (with .sample). I was pretty
confident it should be possible, so after playing with the concept in IRB I knew
it would work. I think my style of pseudocoding is pretty minutely specific, which
I see as a good thing. However, my style of thinking might be a bit myopic; I saw
my way and wanted to make it work immediately, rather than considering different
approaches.

What are the benefits of using a class for this challenge?
Using a class allowed me to define different variables and, more importantly,
to access them in multiple methods (@bingo_number and @column_index
particularly). It also lets me parcel out different actions, and different
functionalities for the program (in the future, as well).

How can you access coordinates in a nested array?
Accessing coordinates in a nested array relies on chained indices. For example, arr[1][2] would access the third element within arr's second element (which needs to
be an array for this to work!) If an array's elements are all data structures, it's
possible to iterate over the array and access certain elements using indices.

What methods did you use to access and modify the array?
I used .each to iterate over the board, and then the randomly chosen index from the array of "BINGO" letters allowed me to find, compare, and reassign the element.

Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?
I don't believe I had successfully used .index in a challenge before, although
I recall experimenting with it. .index will return the numerical index of a
 returned array element, which was almost a perfect match for my pseudocode.
 .rindex was another option, but didn't seem to act appreciably different for
 my purpose, and .index was more readable.

How did you determine what should be an instance variable versus a local variable?
What do you feel is most improved in your refactored solution?
While refactoring, I tried to minimize the number of instance variables, since I
didn't believe all of them would have to be accessible to other methods (that's
how I determined which would be which), but for instance when I tried to make @bingo_ball a local variable, the program broke.
I think the best refactoring I did involved renaming and condensing variables.
My initial solution strung commands together to get the right return, but
refactoring for readability made me think about making each line of code more
intuitive to a reader, so I created variables to that end.
(I learned about the ternary operator, but it didn't seem to play nicely with my
@announce variable.)
=end