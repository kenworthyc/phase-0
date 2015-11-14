# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [with Calvin Land ].

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: Array of numbers, positive or negative, integers or floats.
# Output: Sum of each array number.
# Steps to solve the problem.
# Need a variable "sum" that keeps track of the total
# then use a loop or .each that iterates sum + array[index].

# 1. total initial solution

def total(array)
  sum = 0
  array.each do |x|
    sum += x
  end
  return sum
end

# 3. total refactored solution

def total(array)
  sum = array.inject(:+)
  return sum
end

# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: Array of strings
# Output: one string
# Steps to solve the problem.
# Take each array string
# Add " " between strings

# 5. sentence_maker initial solution

def sentence_maker(array)
  full_sentence = ""

  array.each do |x|

    unless x == 0
      full_sentence = full_sentence + " " + x
    else
      full_sentence = full_sentence + x
    end

  end

  return full_sentence.capitalize + "."
end


# 6. sentence_maker refactored solution

def sentence_maker(array)
  return array.join(" ").capitalize + "."
end

