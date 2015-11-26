#Attr Methods

# I worked on this challenge [by myself]

# I spent [#] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:

class NameData

attr_accessor :name

  def return_name
    @name = "Caroline"
  end

end


class Greetings
  def initialize
    @name = NameData.new
  end

  def hello
    @name =
    puts "Hello #{@name.return_name}! How wonderful to see you today."
  end

end

greet = Greetings.new
p greet.hello

# Reflection
=begin
Release_1.rb file:
The methods in release_1.rb are running the initialize function on a class
Profile, in which the profile categories are defined (age, name, occupation).
Those definitions are housed in instance variables, which are used to make
all of those categories available to other methods. After that, the methods access those categories, either to be returned (what_is_age, which calls the age instance
 variable) or changed (change_my_age, which redefines the age instance variable).

Release_2.rb file:
The age instance variable still exists, but the method that returns the value
assigned to @age is replaced with a new... thing which relates the symbol :age
to an 'attr_reader', which sounds like it reads the value of that instance variable.
The 3 lines (and an extra method) are collapsed into that one attr_reader line,
rendering it shorter and not much more complex to read (although you kind of need
the explanation for attr_readers).

Release_3.rb file:
Now there's another new thing! attr_writer one looks like it will change
(overwrite?) the defined instance variable @age, and replace the method
which changed @age, in much the same way as the attr_reader replaced the return
method for @age. Again, it seems still pretty readable, but it helps quite a bit
to have the demonstration of attr_*.

Release_4.rb file:
attr_accessor combines attr_reader and attr_writer; you may want to use one or
the other based on security measures (whether users should be able to overwrite
certain information).

Release_5.rb file:

What is a reader method?
What is a writer method?
What do the attr methods do for you?
Should you always use an accessor to cover your bases? Why or why not?
What is confusing to you about these methods


=end