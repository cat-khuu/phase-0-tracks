# Virus Predictor

# I worked on this challenge by myself.
# I spent [2.5] hours on this challenge.

# EXPLANATION OF require_relative
# require - loadpath is known
# require_relative  - it is your own project and you know where the file is located within your project
require_relative 'state_data'

class VirusPredictor

  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

# calls both methods - predicted_deaths and speed_of_spread
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

# number of deaths for each state depending on population density and population. The greater the population density then the greater the number of deaths.
  def predicted_deaths
  # predicted deaths is solely based on population density


    if @population_density > 50
      benchmark = 200
      multiplier = 0.4
      until @population_density >= benchmark
        benchmark -=50
        multiplier -=0.1
      end
    else
      multiplier = 0.05
    end

    number_of_deaths = (@population * multiplier).floor

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

# how quickly the virus will spread. The greater the population density then the quicker the virus will spread.
  def speed_of_spread #in months

    benchmark = 200
    speed = 0.5

    until @population_density >= benchmark
      benchmark -=50
      speed +=0.5
    end

    puts " and the virus will spread across the state in #{speed} months. \n\n"
    end

end


#================================================#

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

STATE_DATA.each do |state, population|
  state_demographics = VirusPredictor.new(state, STATE_DATA[state][:population_density], STATE_DATA[state][:population])
  state_demographics.virus_effects
end


#================================================#
# Reflection Section
# What are the differences between the two different hash syntaxes shown in the state_data file? STATE_DATA is a hashed hash. It uses both strings and symbols as its keys. STATE_DATA could have used just strings as its keys for both hashes, but instead, the keys were both symbols. We might choose to use symbols over strings to save on memory and how quickly our program can retrieve the information. Instead of having 100+ variables that are named population and population_density, we only have 2 because symbols were used as opposed to strings for the inner hash.
# What does require_relative do? How is it different from require? You use require_relative when you know the load path of the files in your project, and you use require when you don't know the load path because it's not your project. For example, you would use require 'extensions/all' or whatever gem extension you installed.
# What are some ways to iterate through a hash? You can iterate through a hash using .each or map. I went with .each to call virus effects on all 50 states.
# When refactoring virus_effects, what stood out to you about the variables, if anything? They were instance variables that were already defined in itialize. There was no need to pass @population and @population_density as arguments for virus_effects because we already have access to those values.
# What concept did you most solidify in this challenge? Iterating over a hash, constants, and refactoring the two methods (predicted_deaths and speed_of_spread). Release 8 (refactoring the last two methods) took awhile, but I was able to see how simple the code can look, which made me think more of the two questions when and why I choose to implement x over y in a situation. For the refactoring, I went with a loop for speed_of_spread. For predicted_deaths, I used a loop again, but realized I would still need one if/else statement.