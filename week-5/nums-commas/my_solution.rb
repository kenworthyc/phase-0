# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# # What is the input?
# Positive integer
# # What is the output? (i.e. What should the code return?)
# Number as a string
# # What are the steps needed to solve the problem?
# 1. Determine if the number needs commas
#   a. convert number to string
#   b. count characters in string
#   c. IF char-count > 3, proceed
# 2. Determine the number of commas needed in var
#   a. Divide char-count by three
# 3. Insert commas at appropriate intervals
#   a. IF char-count divides evenly into 3, insert commas every 3 characters
#   b. ELSIF char-count has remainder of 1, insert 1 comma after 1 character, then rest of commas every 3 characters
#   c. ELSIF char-count has remainder of 2, insert 1 comma after 2 characters, then rest of commas every 3 characters
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

    -4.step(-char_count - 1, -4) do |x|
      number_string.insert(x, ",")
    end

    return number_string
  else
    return number_string
  end
end

# 3. Reflection