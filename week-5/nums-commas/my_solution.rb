# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input?
Positive integer
# What is the output? (i.e. What should the code return?)
Number as a string
# What are the steps needed to solve the problem?
# 1. Determine if the number needs commas
#   a. convert number to string
#   b. count characters in string
#   c. IF char-count > 3, proceed.
#     (ELSE, return string of number) [<= at the end!]
# 2. Determine the number of commas needed in var
#   a. Divide char-count by three
# 3. Insert commas at appropriate intervals
#   a. IF char-count divides evenly into 3,
#       i. use a step-counter to insert commas every 3 characters
#   b. ELSIF char-count has remainder of 1,
#       i. insert 1 comma after 1 character
#       ii. use a step-counter to insert rest of commas every 3 characters
#   c. ELSIF char-count has remainder of 2,
#       i. insert 1 comma after 2 characters
#       ii. use a step-counter to insert rest of commas every 3 characters
#   (d?. Or insert commas starting from end of string?)
# 4. Return string with commas
# 1. Initial Solution

# def separate_comma(integer)
#   number_string = integer.to_s
#   char_count = integer.to_s.length

#   if char_count > 3
#     number_commas = char_count / 3

#       if char_count % 3 == 0
#         3.step(char_count, 4) do |x|
#           number_string.insert(x, "," )
#         end
#       elsif char_count % 3 == 1
#         number_string.insert(1, ",")

#         5.step(char_count, 4) do |x|
#           number_string.insert(x, "," )
#         end
#       elsif char_count % 3 == 2
#         number_string.insert(2, ",")

#         6.step(char_count, 4) do |x|
#           number_string.insert(x, "," )
#         end
#       end

#   else
#     return number_string
#   end

#   return number_string
# end

# 2. Refactored Solution

def separate_comma(integer)
  number_string = integer.to_s
  char_count = integer.to_s.length

  if char_count > 3

    -4.step((-char_count - 1), -4) do |x|
      number_string.insert(x, ",")
    end

    return number_string
  else
    return number_string
  end
end

# 3. Reflection

# What was your process for breaking the problem down? What different approaches did you consider?
# Knowing that the output would be a String (and that Integers don't play nicely with alphanumerals), I approached the problem thinking about how to change the output string. I knew that there was a way to access characters in a string with numerical indices, as if they were individual cells in an array. Although I thought about breaking up the number into separate chunks of 3 numbers, accessing the characters directly seemed to me to be simpler, so I went with that.
#From there, I thought about different ways I could divide the string into triads. Since some of the numbers wouldn't be evenly grouped into three, I knew I'd have to deal with adding a comma after one/two digit/s, then adding more commas by threes after that. I thought it'd be easier to insert them from the end of the string, but I had no idea how to do that.

# Was your pseudocode effective in helping you build a successful initial solution?
# Immensely successful! At least, 100x more successful than pseudocoding has been for me before. I was able to shake out the larger steps, and then the more minute necessities for each one. Some of those initial calculations or iterations were intimidating, but focusing on pseudocoding, and doing it on a notebook, ironed them out for me. It seems like my ability to think in small logical steps is improving.

# What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?
# I learned somewhere that it's possible to access characters in a string with indices, like in an array, so I guessed that there would be a way to splice in another character with the index (like in arrays). That method turned out to be .insert.
# The main simplification in my refactoring was actually logic-based: start adding commas from the end of the number, and then have no remainder from the triads to adjust. I wasn't sure if there was a method to do this, but I learned that it wasn't a method so much as a property of accessing array indices (the negative index). That, working with the step-counter from the initial solution, seemed much cleaner than all the conditional statements in my initial solution.

# The Ruby docs are still super frustrating to me at the moment— really dense, and not particularly intuitive or associative in the way they describe what the methods do. I wish there were more cross-referencing between similar methods (for different classes especially). Generally I could barely understand the example code; for every new method I wanted to try, I would stare at the example on Ruby docs, try to copy it in IRB, get nowhere... then I'd find a blogger on Google who wrote far, far clearer example code and figure it out fine.

# How did you initially iterate through the data structure?
# I made conditionals dependent on whether the integer required a comma after the first one, two, or three digits, and placed the first comma according to that limitation. Then, adjusting for the different indices for the different number of digits before the first iterating commas, I used a step counter to iterate through the characters by threes, and insert a comma for each triad.

# Do you feel your refactored solution is more readable than your initial solution? Why?
# I'm still getting a feel for what 'readable' means in coding, and in Ruby. Nonetheless, I think my refactored solution is easy to follow as long as the reader is familiar with the negative index numbers (which access the structure starting with the last index).