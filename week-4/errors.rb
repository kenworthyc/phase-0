# Analyze the Errors

# I worked on this challenge [by myself].
# I spent [2.5] hours on this challenge.

# --- error -------------------------------------------------------

# cartmans_phrase = "Screw you guys " + "I'm going home."

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

# def cartman_hates(thing)
#   while true
#     puts "What's there to hate about #{thing}?"
#   end
# end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# errors.rb
# 2. What is the line number where the error occurs?
# Line 170
# 3. What is the type of error message?
# Syntax error
# 4. What additional information does the interpreter provide about this type of error?
# The interpreter reports an 'unexpected end-of-input, expecting keyword_end'. This implies a missing 'end' command.
# 5. Where is the error in the code?
# Line 17, there is no closing 'end'.
# 6. Why did the interpreter give you this error?
# There are two elements in this program which require an 'end' keyword to function: a method (cartman_hates) and a while loop. There was only one 'end' keyword, so the method never completed without the second 'end'.

# --- error -------------------------------------------------------

#south_park = "small town in Colorado"

# 1. What is the line number where the error occurs?
# Line 36
# 2. What is the type of error message?
# NameError, subset of Standard errors.
# 3. What additional information does the interpreter provide about this type of error?
# The interpreter says the error is in `<main>', meaning the default global location (rather than in a specific method or program). The interpreter reports an "undefined variable or method `south_park' for main:Object(NameError)", implying the error refers to the name or function of the object `south_park'.
# 4. Where is the error in the code?
# After 'south_park', there should be: '= [string or integer]'.
# 5. Why did the interpreter give you this error?
# Since south_park has no definition built into the Ruby language, it can't do anything with that raw text. Ruby needs each new variable to have an assigned value (integer, string, etc) in order to use it.

# --- error -------------------------------------------------------

# def cartman()
# end

# 1. What is the line number where the error occurs?
# Line 51
# 2. What is the type of error message?
# NoMethodError
# 3. What additional information does the interpreter provide about this type of error?
# The interpreter knows that this is a method's syntax, but it can't find the method `cartman()` anywhere else in the code (hence NoMethod).
# 4. Where is the error in the code?
# Before and after `cartman()`; it needs to read `def cartman() end`.
# 5. Why did the interpreter give you this error?
# Although the method syntax is correct to *call* a method, `cartman()` has not been defined as an existing method yet. Ruby can't perform a method that hasn't been specifically defined for it!

# --- error -------------------------------------------------------

# def cartmans_phrase
#   puts "I'm not fat; I'm big-boned!"
# end

# cartmans_phrase()

# 1. What is the line number where the error occurs?
# Line 67
# 2. What is the type of error message?
# ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# The interpreter tells us `cartmans_phrase' has the wrong number of arguments (1 for 0).
# 4. Where is the error in the code?
# Line 71. The method is defined correctly; the way the method is called is the problem.
# 5. Why did the interpreter give you this error?
# Since cartmans_phrase doesn't have an argument, and performs a simple responsive task, the method can't utilize or interpret extra information (like a string saying 'I hate Kyle'). Methods generally will not function correctly unless the number of arguments when defined matches the number of arguments when called.

# --- error -------------------------------------------------------

# def cartman_says(offensive_message)
#   puts offensive_message
# end

# cartman_says("Something offensive")

# 1. What is the line number where the error occurs?
# Line 86
# 2. What is the type of error message?
# ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# The interpreter tells us the method cartman_says was called with the wrong number of arguments, this time (0 for 1).
# 4. Where is the error in the code?
# Line 90, after cartman_says("should have an argument like this")
# 5. Why did the interpreter give you this error?
# Similar to the previous argument error; Methods generally will not function correctly unless the number of arguments when defined matches the number of arguments when called. In this case, Ruby needs something to sub in for the `offensive_message` in the program.


# --- error -------------------------------------------------------

# def cartmans_lie(lie, name)
#   puts "#{lie}, #{name}!"
# end

# cartmans_lie('A meteor the size of the earth is about to hit Wyoming', 'Kenny')

# 1. What is the line number where the error occurs?
# Line 107
# 2. What is the type of error message?
# ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# The interpreter reports that the error occurs in the method cartmans_lie, and that there are the wrong number of arguments (1 of 2).
# 4. Where is the error in the code?
# Line 110, cartmans_lie is called with only 1 argument.
# 5. Why did the interpreter give you this error?
# Methods generally will not function correctly unless the number of arguments when defined matches the number of arguments when called. Ruby needs to know what to do with `name` AND what do to with `lie`!

# --- error -------------------------------------------------------

# "Respect my authoritay!" * 5

# 1. What is the line number where the error occurs?
# Line 125
# 2. What is the type of error message?
# TypeError
# 3. What additional information does the interpreter provide about this type of error?
# The interpreter tells us that there's a Fixnum involved (the 5) and a String ("Respect my authoritay!"), and that a Fixnum can't be 'coerced' into a String.
# 4. Where is the error in the code?
# Line 125, the multiply-by-5 method should be after the string.
# 5. Why did the interpreter give you this error?
# Ruby interprets arithmetic in a linear fashion. This operation asks Ruby to multiply 5 by the string "Respect my authoritay!" Cartman's authoritay aside, that mathematically makes no sense.

# --- error -------------------------------------------------------

#amount_of_kfc_left = 0/20

# 1. What is the line number where the error occurs?
# Line 140
# 2. What is the type of error message?
# ZeroDivisionError
# 3. What additional information does the interpreter provide about this type of error?
# The interpreter says the code tried to divide by zero. (It also points out the problem is in the `/' aka the division itself, which is sad and sort of cute.)
# 4. Where is the error in the code?
# The end of line 140, where you tried to divide by zero.
# 5. Why did the interpreter give you this error?
# Because computers and math (and generally everyone) really hate dividing by zero. It results in a meaningless/infinite-ish number.

# --- error -------------------------------------------------------

#require_relative "basic-math.rb"

# 1. What is the line number where the error occurs?
# Line 156
# 2. What is the type of error message?
# LoadError
# 3. What additional information does the interpreter provide about this type of error?
# The interpreter shows where it tried to look for this file, like in my week-4 directory, and reports that it "cannot load such file".
# 4. Where is the error in the code?
# Line 155.
# 5. Why did the interpreter give you this error?
# A load error implies Ruby tried to go get (load) a file, so when Ruby couldn't interpret it (cannot load such file), it reports back that the command (to go get the file) didn't work. It didn't work because Ruby can't read .md files; it can only read .rb files!


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

# Which error was the most difficult to read?

# The first error was pretty hard for me to read, just because I'd never understood the gobbledegook before and was intimidated. Once I got over that, and understood which parts to look for (like the kind of error), the "Respect my authoritay" error was a slight mystery; I knew Fixnum and String, but 'coerced' is still a strange verb to use there.

# How did you figure out what the issue with the error was?

# I either knew from reading the Ruby materials, or else testing a solution on the code helped me narrow down what the problem would be.

# Were you able to determine why each error message happened based on the code?

# All but 2 were exactly what I thought (like incomplete syntax, or calling an incorrect number of arguments). The two I didn't get right away were the method without an 'end', and the last one with require_relative. I still don't have a comprehensive 'feel' for how Ruby should look, so a missing end doesn't 'feel' wrong to me. Yet! The "cannot load such file" error I thought signified a missing file, but it was actually the type of file.

# When you encounter errors in your future code, what process will you follow to help you debug?

# I will definitely lean on the error type to help me look through the Ruby docs to figure out the context of my bug— I think that's what I'm most glad I learned from this exercise, other than less general fear of errors. I could also see using the detail the interpreter gives me as google keywords (i.e. "cannot load such file"). I also found it useful to change the code and test out another version for the same error. Depending on whether the error changed, I was able to troubleshoot the key problem.