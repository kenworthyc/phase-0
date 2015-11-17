# Pad an Array

# I worked on this challenge [with Paul Dynowski]

# I spent [1] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input? initial array, minimum length for array, padding to be used to fill out array
# What is the output? (i.e. What should the code return?) code should return padded array
# What are the steps needed to solve the problem?
#1. Check if initial array is longer than minimum length
# IF it is, return array as-is
# ELSE pad array
#(this step for non-destructive only): create new array variable equivalent to initial array, use this going forward
#UNTIL length equals minimum length, push padding value onto array
# return array


# 1. Initial Solution

def pad!(array, min_size, value = nil) #destructive

  if array.length >= min_size
    return array
  else
    array.push(value) until array.length == min_size
  end
    array
end

def pad(array, min_size, value = nil) #non-destructive

  new_array = []

  array.each do |value|
      new_array.push(value)
   end

  if array.size >= min_size
    return new_array
  else
    new_array.push(value) until new_array.size >= min_size
  end
    new_array

end

# 3. Refactored Solution

def pad(array, min_size, value = nil) #non-destructive

    new_array = array.clone

  if array.size >= min_size
    return new_array
  else
    new_array.push(value) until new_array.size >= min_size
  end
    new_array

end

# 4. Reflection

# Were you successful in breaking the problem down into small steps?
# More and more so! After another session where we were a little quick to jump in coding, my pair and I tried starting the pseudocode process on paper, and that proved useful to puzzling through the problem with logic (not blaming the computer somehow).
# Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
# It was fairly easy; we remembered to include keywords like IF, ELSE, WHILE, &c in our pseudocode, so that made the method blocks easier to quickly lay out and create. One thing I still have problems with understanding is exactly where to locate empty containers in the code (if necessary).
# Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
#   Our initial solution ran into 1 error, which was (according to the error message) due to our non-destructive method not creating a brand new variable for the preserved array. So we created the new variable above our if/else statement and iterated through the original input array to get a copy of it in a new variable (and therefore with a different location in the memory).
# When you refactored, did you find any existing methods in Ruby to clean up your code?
# Yes; .clone allowed us to create a new copy of the input array without iterating through, which was nice and brief.
# How readable is your solution? Did you and your pair choose descriptive variable names?
# I think our code is readable. Instead of the given argument name "value", I may have chosen "padding" or "placeholder". Otherwise, I think we wrote code that was broken down into conditions and used readable methods (like .size in the line for min_size).
# What is the difference between destructive and non-destructive methods in your own words?
# Destrucive methods will permanently change the input object. If a destructive method takes an array as an argument and edits the array, calling the array after the method will return the edited version. Non-destructive methods will not permanently change the input object at all.