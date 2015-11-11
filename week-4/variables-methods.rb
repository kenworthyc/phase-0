# Asks full name and greets user

puts "Bonjour ! Comment vous appelez-vous (prénom, s'il vous plaît) ?"
puts "Hello! What's your name (first name, please)?"
first_name = gets.chomp

puts "Enchanté, " + first_name + ". Pourriez-vous me donner votre deuxième nom ?"
puts "Pleased to meet you, " + first_name + ". Would you tell me your middle name?"
middle_name = gets.chomp

puts first_name + " " + middle_name + ", très beau ! Enfin, votre nom de famille ?"
puts first_name + " " + middle_name + ", very nice! And your last name?"
last_name = gets.chomp

full_name_str = first_name + " " + middle_name + " " + last_name

puts full_name_str + ", un plaisir de vous rencontrer."
puts full_name_str + ", it's my pleasure to make your acquaintance."

# Adds letters in user's name together and presents them (without spaces)

letters_in_name = first_name.length + middle_name.length + last_name.length
puts "Saviez-vous qu'il y a " + letters_in_name.to_s + " lettres en votre nom ?"
puts "Did you know there are " + letters_in_name.to_s + " letters in your full name?"

# Asks user's favorite number, suggests number + 1

puts "C'est quoi votre numéro preféré, " + first_name + " ?"
puts "What's your favorite number, " + first_name +"?"
fave_num = gets.chomp
better_num = fave_num.to_i + 1

puts "Peut-être " + better_num.to_s + " ? Plus grand c'est mieux, non ?"
puts "What about " + better_num.to_s + "? It's bigger and better!"


# Link to 4.3.1 (address): https://github.com/kenworthyc/phase-0/blob/master/week-4/address/my_solution.rb

# Link to 4.3.2 (math): https://github.com/kenworthyc/phase-0/blob/master/week-4/math/my_solution.rb


# How do you define a local variable?

# You can define a local variable by using `=`. `my_initials = "CDK"` makes a local variable whose value is a string (of three letters).

# How do you define a method?

# The syntax for a method looks like:
# ```ruby
# def my_adding_method(arg_1, arg_2)
#   puts arg_1 + arg_2
# end
# ```
# (Note: The parentheses are optional— Ruby will take arg_1 and arg_2 as parameters without the parentheses if you prefer.) This method adds the two arguments together as an example, but you could tell the method to do anything you can think of in the body of the method (between the parameters and the `end`).

# What is the difference between a local variable and a method?

# A local variable points to one object, such as a string or an integer, and stores it as-is. A method has a name and two built-in variables that the user can change in order to perform an action, like adding two objects together. In the method from the previous question, you could conceivably add integers or strings together, depending on your goals!

# How do you run a ruby program from the command line?

# In the shell, type `ruby my_ruby_program.rb` and press enter. Be sure that the working directory has the file you want to run, and that the file extension is `.rb`!

# How do you run an RSpec file from the command line?

# Almost the same as before— navigate to the correct directory, then input `rspec my_rspec_file.rb`.

# What was confusing about this material? What made sense?

# I'm still getting my head around print vs. return— the practice of it, when to use return/print/p/puts. Most of my other problems have more to do with learning what to look out for, syntactically— I was forgetting to add + signs between strings all the time. I enjoy the simplicity of applying method arguments to any tasks within the method; it took me a while to get it when we went through Codecademy, but now it seems... elegant, dare I say.