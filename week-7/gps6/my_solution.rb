# Virus Predictor

# I worked on this challenge [by myself].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# require_relative calls the information or content from a sibling ruby file.
# require functions in place of a gem, creates an environment in which to work.
require_relative 'state_data'

class VirusPredictor

  #sets up the object VirusPredictor will create with arguments and instance variables needed throughout the class
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  #calls methods defined below and prints relevant information for state in STATE_DATA
  def virus_effects
    predicted_deaths(@population_density, @population, @state)
    speed_of_spread(@population_density)
  end

  private

  #defines the rough rate of fatalities within more densely populated states,
  #then calculates the number of deaths based on the population, and prints info
  def predicted_deaths(population_density, population, state)
    # predicted deaths is solely based on population density

    # if @population_density >= 200
    #   number_of_deaths = (@population * 0.4).floor
    # elsif @population_density >= 150
    #   number_of_deaths = (@population * 0.3).floor
    # elsif @population_density >= 100
    #   number_of_deaths = (@population * 0.2).floor
    # elsif @population_density >= 50
    #   number_of_deaths = (@population * 0.1).floor
    # else
    #   number_of_deaths = (@population * 0.05).floor
    # end

    case @population_density
    when @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    when @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    when @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    when @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  #if the population is high (depending on benchmarks of 50), the speed
  #of the spread is assigned roughly to the (previously 0) speed variable.
  def speed_of_spread(population_density) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end



#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

#report

  STATE_DATA.each_key do |x|
    VirusPredictor.new(x, STATE_DATA[x][:population_density], STATE_DATA[x][:population]).virus_effects
  end


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section
=begin
What are the differences between the two different hash syntaxes shown in the state_data file?
One hash syntax uses hash rockets (=>) to separate keys and values, while the second
one uses colons (:) to separate keys which are symbols from values. They're still both
perfectly valid hashes.

What does require_relative do? How is it different from require?
require_relative references a ruby file that is a 'sibling' file (in the same directory as the working ruby file). On the other hand, require provides more context and more
of an environment to work in, whereas require_relative attaches code or data to use.

What are some ways to iterate through a hash?
You can iterate through a hash using commands like .each and .map, which affect both
the key and value, or methods like .each_key or .each_value, which iterate in relation
to the relevant element.

When refactoring virus_effects, what stood out to you about the variables, if anything?
Since I was solo, my guide Bison helped me understand the instance variables which
were called in the relevant methods, and the extraneous ones which weren't. Otherwise,
I learned that the all-caps variables are a constant, which is a human distinction— a 'constant' variable in Ruby is just a variable that programmers agree not to touch.

What concept did you most solidify in this challenge?
I got more and better practice with iterating through a nested data structure on this challenge, and on working with information on an exterior file.
=end