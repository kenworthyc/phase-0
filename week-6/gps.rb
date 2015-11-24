# Your Names
# 1) Caroline Kenworthy
# 2) Nick Davies

# We spent [1] hours on this challenge.

# Bakery Serving Size portion calculator.

def error_handling(cookbook, item_to_make)
  unless cookbook.has_key?(item_to_make)
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end
end

def leftovers(leftover_ingredients)
  if leftover_ingredients >= 5
    serving_size_calc("cake",leftover_ingredients)
  else serving_size_calc("cookie", leftover_ingredients)
  end
end

def serving_size_calc(item_to_make, order_quantity)

  cookbook = {"cookie" => 1, "cake" =>  5, "pie" => 7}

  #error_counter = 3

#declare library of recipes and error_counter
  error_handling(cookbook, item_to_make)

  #library.each do |food|
  #  if library[food] != library[item_to_make]
  #    p error_counter += -1
  #  end
  #end
  # Iterates through library, checks that item_to_make is in library
  #if error_counter > 0
  #  raise ArgumentError.new("#{item_to_make} is not a valid input")
  #end
  # Raise an error if item_to_make isn't in library

  #serving_size = library.values_at(item_to_make)[0]

  serving_size = cookbook[item_to_make]
  leftover_ingredients = order_quantity % serving_size

  # Retrieve serving size for the item_to_make and the modulus (leftover ingredient) count
  message = "Make #{order_quantity/serving_size} #{item_to_make}"
  message = message + "s" if order_quantity/serving_size > 1

  if leftover_ingredients == 0
    return message
  else
    return message + ". You have #{leftover_ingredients} leftover ingredients. Suggested baking items: " + leftovers(leftover_ingredients)
  end

end
# Based on the whether there's a modulus, return a message of how many items to make (and leftover ingredients)


#Driver code
p serving_size_calc("pie", 7)
p serving_size_calc("pie", 13)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection

=begin
What did you learn about making code readable by working on this challenge?
1. Variable names are super important; at the beginning I thought "serving_size_mod"
 was a variable that modified, not a variable that returned the modulus.
2. The simplicity of code can depend on the built-in methods you know. The
reason the original error-raiser was so overworked seemed to be simply because
they hadn't used .has_key?
3. Making the output, not just the code, of a program readable for humans
is more finicky than I realized before— the English language takes a lot of
nudging into the right form.

Did you learn any new methods? What did you learn about them?
No new methods, but my pair did suggest a way to  use the serving_size_calc recursively in order to refactor the modulus, which was a pretty stellar way
to DRY out the code.

What did you learn about accessing data in hashes?
I learned you can access an element that you've passed into a hash by calling the passed argument, rather than looking for the opposite key or value and using that
as the accessing variable (which would be static, and less changeable).

What concepts were solidified when working through this challenge?
1. How to simply raise an ArgumentError
2. Looking through code and seeing the underlying logic; then recognizing
when it can be simplified
3. The order of defining methods is always important: Ruby can't recognize
a called method unless it's been defined above the call


=end