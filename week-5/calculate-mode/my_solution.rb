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

p mode([3, 5, 3, 4, "hi", 4, "hi", 4, 1])
# 4. Reflection

# Which data structure did you and your pair decide to implement and why?

# Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?
# What issues/successes did you run into when translating your pseudocode to code?
# What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?