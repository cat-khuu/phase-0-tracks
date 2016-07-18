# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

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