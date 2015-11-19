# Calculate the mode Pairing Challenge

# I worked on this challenge [with Phil Thomas]

# I spent [1] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input?
# An array of numbers or strings
# What is the output? (i.e. What should the code return?)
# An array including the most frequent values

# What are the steps needed to solve the problem?
# 1. Create empty hash
# => a. keys will be the number of occurrences of given array element
# 2. Compare all elements in array;
# => a. assign elements w/ reoccurrences to the # of occurrences (to appropriate key in hash)
# 3. Return array with highest # of occurrences


# 1. Initial Solution

=begin

def mode(list)
  mode_hash = list.group_by { |element| list.count(element)}
    mode_hash = mode_hash.max_by{ |key, value| key }
  mode_hash.to_a.flatten!.uniq!.shift

  mode_hash
end

=end

# 3. Refactored Solution

def mode(list)
  # Take list, compare elements and return frequency of element (k: frequency, v: element)
  mode_hash = list.group_by { |element| list.count(element)}
  # Identify key-value pair with highest key (highest frequency)
  mode_array = mode_hash.max_by{ |k, v| k }.to_a
  # Convert hash to one-dimensional array, return the value of mode
  mode_array.flatten!.uniq!.shift

  mode_array
end

# 4. Reflection

# Which data structure did you and your pair decide to implement and why?
# It made sense to us to take the input array and convert it into a hash, so we could
# associate one instance of an element with a key, and the number of times it occurred
# with a value.

# Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?
# Not entirely. My pair for this exercise has a strong grasp on enumerators
# and on the Ruby docs, and he was ready to jump into using methods, and I didn't
# always understand each step. I suggested we pedal back... but
# I wanted to complete the challenge quickly too. As a result, I know about a few more
# methods than I did before, but I need to review their internal logic.

# What issues/successes did you run into when translating your pseudocode to code?
# Our relative issues/successes issued mostly from our ability to read and translate
# the sample code from the Ruby docs. We ran into problems using the syntax of
# the .max_by method, but got it correct eventually; conveniently, the .group_by
# method automatically turns an array into a hash, so that eliminated a step for us.

# What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
# We figured out quickly that we could to use .group_by (from our reading)
# to make the hash of array elements associated by frequency. It was a little more difficult
# to find the right kind of .max_ method to access the highest key in the hash; max_by ended
# up working. After that, we strung together several other simple methods to flatten the output
# array and edit out extraneous elements.