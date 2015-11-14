# Count Between

# I worked on this challenge [by myself].

# count_between is a method with three arguments:
#   1. An array of integers
#   2. An integer lower bound
#   3. An integer upper bound
#
# It returns the number of integers in the array between the lower and upper bounds,
# including (potentially) those bounds.
#
# If +array+ is empty the method should return 0

# Your Solution Below

# Input: array of ints, low int set point, high int set point
# Output: number of array members between low & high set points

def count_between(list_of_integers, lower_bound, upper_bound)
  numbers_between = []

  list_of_integers.each do |i|
    if upper_bound >= i && i >= lower_bound
      numbers_between.push i
    else
    end
  end

  if numbers_between.nil?
    return 0
  else
    return numbers_between.length
  end

end