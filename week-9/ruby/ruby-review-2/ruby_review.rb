# Drawer Debugger

# I worked on this challenge [with Phil Thomas].
# I spent [.75] hours on this challenge.

# Original Code

class Drawer

  attr_reader :contents

    # Are there any more methods needed in this class?

    def initialize
      @contents = []
      @open = true
    end

    def open
      @open = true
    end

    def close
      @open = false
    end

    def add_item(item)
      @contents << item
    end

    def remove_item(item = @contents.last) #what is `#pop` doing?
      if @contents.empty?
        puts "Nothing to remove!"
      else
        @contents.delete_at(@contents.index(item))
      end
    end

    def dump  # what should this method return?
      @contents = []
      puts "Your drawer is empty."
    end

    def view_contents
      puts "The drawer contains:"
      if @contents.empty?
        puts "Nothing."
      else
      @contents.each {|silverware| puts "- " + silverware.type }
      end
    end

end


class Silverware
    attr_reader :type
    attr_reader :clean

    # Are there any more methods needed in this class?

    def initialize(type, clean = true)
      @type = type
      @clean = clean
    end

    def clean_silverware()
      @clean = true
    end

    def eat
      puts "eating with the #{type}"
      @clean = false
    end

end



# DO NOT MODIFY THE DRIVER CODE UNLESS DIRECTED TO DO SO
knife1 = Silverware.new("knife")

silverware_drawer = Drawer.new
silverware_drawer.add_item(knife1)
silverware_drawer.add_item(Silverware.new("spoon"))
silverware_drawer.add_item(Silverware.new("fork"))
silverware_drawer.view_contents

silverware_drawer.remove_item
silverware_drawer.view_contents
sharp_knife = Silverware.new("sharp_knife")


silverware_drawer.add_item(sharp_knife)

silverware_drawer.view_contents

removed_knife = silverware_drawer.remove_item(sharp_knife)
removed_knife.eat
removed_knife.clean_silverware
raise Exception.new("Your silverware is not actually clean!") unless removed_knife.clean_silverware == true

silverware_drawer.view_contents
silverware_drawer.dump
raise Exception.new("Your drawer is not actually empty") unless silverware_drawer.contents.empty?
silverware_drawer.view_contents

# What will you need here in order to remove a spoon? You may modify the driver code for this error.// Done
spoon = Silverware.new("spoon")
silverware_drawer.add_item(spoon)
silverware_drawer.view_contents
raise Exception.new("You don't have a spoon to remove") unless silverware_drawer.contents.include?(spoon)
silverware_drawer.remove_item(spoon) #What is happening when you run this the first time?
spoon.eat
puts spoon.clean #=> this should be false

# DRIVER TESTS GO BELOW THIS LINE

silverware_drawer.add_item(spoon)
silverware_drawer.add_item(spoon)
silverware_drawer.view_contents
silverware_drawer.add_item(knife1)
silverware_drawer.view_contents
silverware_drawer.remove_item(knife1)
silverware_drawer.view_contents
silverware_drawer.remove_item(spoon)
silverware_drawer.remove_item(spoon)
silverware_drawer.remove_item(spoon)

silverware_drawer.view_contents

# Reflection
=begin

What concepts did you review in this challenge?

Use of classes and how they function— how the one object created by one Class
doesn't *always* interact with another, and the objects exist outside of the parameters
of separate classes. (In this challenge, e.g., a piece of silverware in the program
exists outside of the Drawer class when .eat is called on the piece of silverware.)

What is still confusing to you about Ruby?

I need to go over attr_* methods, be more comfortable using them, and probably Classes
in general— I think I'll try that CarClass module exercise.

What are you going to study to get more prepared for Phase 1?

Review the Well-Grounded Rubyist, see if I understand any of the material better this time
around; complete a few more of the Ruby module exercises; complete the Ruby codecademy course.

=end

