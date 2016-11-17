# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# Specifies file that program will work with
# Differs from require in that it uses relative path to find other file
require_relative 'state_data'

class VirusPredictor

  # Creates instance variables for each instance of class
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # Calls predicted_deaths and speed_of_spread methods
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

  # Calculates number of deaths based on population density
  # Prints state and number of deaths
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      multiplier = 0.4
    elsif @population_density >= 150
      multiplier = 0.3
    elsif @population_density >= 100
      multiplier = 0.2
    elsif @population_density >= 50
      multiplier = 0.1
    else
      multiplier = 0.05
    end

    number_of_deaths = (@population * multiplier).floor

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  # Determines speed of spread depending on population density
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.

    if @population_density >= 200
      speed = 0.5
    elsif @population_density >= 150
      speed = 1
    elsif @population_density >= 100
      speed = 1.5
    elsif @population_density >= 50
      speed = 2
    else
      speed = 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

STATE_DATA.each do |state, data|
  state_name = VirusPredictor.new(state, data[:population_density], data[:population])
  state_name.virus_effects
end



#=======================================================================
# Reflection Section

# What are the differences between the two different hash syntaxes shown
# in the state_data file?

# The hash rocket allows the key to be a string or another data type,
# while the colon only allows the key to be a symbol.

# What does require_relative do? How is it different from require?

# require_relative allows the program to access another file and use
# data or methods from it. It differns from require because it uses the
# relative path to find the file.

# What are some ways to iterate through a hash?

# You can iterate through a hash using .each, .times, or a for loop.

# When refactoring virus_effects, what stood out to you about the variables, if anything?

# The variables were instance variables, which mean that they did not need
# to be passed as arguments to the other methods within the class definition.

# What concept did you most solidify in this challenge?
# I felt that I solidified refactoring in this challenge, as I made the
# code simpler and less repitive.
