# GPS 2.2 - Create an Electronic Grocery List# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # split input list into array
    # create new hash
  # set default quantity
    #iterate over array to create hash
  #
  #   assigning default value to each key
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]

# test one -  carrots apples cereal pizza
# test two - nothing in it

def new_list(list_items)
  list_array = list_items.split(" ")
  grocery_list = Hash.new
  # Hash[(1..5).map { |num| [num, 0] }]
  list_array.each  { |item|
    grocery_list[item] = 1
    }
  grocery_list
end

# Method to add an item to a list
# input: list, item name and optional quantity
# steps: check keyset to see if item already exists
# IF it exists, update the value (call update method)
# ELSE add it to list.
# output: new list

def add_item(list, item_name, qty=1)
  if list.has_key?(item_name)
    list[item_name] += qty
  else
    list[item_name] = qty
  end
  list
end

# Method to remove an item from the list
# input: list, item name
# steps: check keyset
# IF item exists, remove it
# ELSE do nothing
# output: return updated hash

def remove_item(list, item_name)
  if list.has_key?(item_name)
    list.delete(item_name)
  end
  list
end

# Method to update the quantity of an item
# input: list, item_name, new qty
# steps: check keyset for item
# IF item exists, reassign value
# ELSE call add method
# output: updated hash

def update_item(list, item_name, new_qty)
  if list.has_key?(item_name)
    list[item_name] = new_qty
  else
    list = add_method(list, item_name, new_qty)
  end
  list
end

# Method to print a list and make it look pretty
# input: list
# steps: loop over list [item: qty, newline] for each item
# output: string of items and quantities

def print_list(list)
  grocery_list = "Grocery List" + "\n"

  list.each do |item, qty|
     grocery_list += "#{item} : #{qty}" + "\n"
  end

  puts grocery_list
end


list = new_list("carrots apples cereal pizza")
# list=new_list("")
# p list
list = add_item(list, "lemonade", 2)
list = add_item(list, "tomatoes", 3)
list = add_item(list, "tomatoes", 1)
# p list
# list = add_item(list, "lemonade", 2)
# list = add_item(list, "lemonade", 2)
list = update_item(list, "lemonade", 1)
list = remove_item(list, "ice cream")
#list = add_item(list, "carrots", 4)

# p list

 print_list(list)

# What did you learn about pseudocode from working on this challenge?
# That I need a lot more practice with it. I have an oddly difficult time breaking these processes down into steps
# (maybe has something to do with my previous relationship
# with computers breaking down to me telling it "do the magic
# thing I want you to do!" and not telling it how).
# Nonetheless, I got some basics down— steps that most methods
# will have, like setting up an empty container, deciding what
# will go into it and how to select those elements, and how to
# return the desired output. (But even that is skipping a lot
# of steps! Argh!)

# What are the tradeoffs of using Arrays and Hashes for this challenge?
# Arrays are easier to print; Hashes are more efficient for
# changing a datum with an associated value.

# What does a method return?
# A method returns the last variable evaluated within the method.
# Ideally the programmer knows exactly what they want to return,
# and can call that variable after the method performs the desired tasks.

# What kind of things can you pass into methods as arguments?
# I know for sure that methods will accept variables, strings, integers, arrays, or hashes as arguments. It's possible that there are more varied objects that could be passed into methods as arguments (which we haven't learned yet).

# How can you pass information between methods?
# That was one of the issues my pair and I didn't resolve yet during the pairing session. Our solution for passing information between methods was to assign a variable to the output ('list') and include that array in the argument parameters for each method.

# What concepts were solidified in this challenge, and what concepts are still confusing?
# Solidified for me: a. how to access Hash keys, b. the term "driver code", c. the methods .has_key and .delete, d. the interaction between methods.
# Still confusing for me: a. Why isn't "\n" printing a newline from a hash? b. How can we send a method instructions from a different method without repeating ourselves?