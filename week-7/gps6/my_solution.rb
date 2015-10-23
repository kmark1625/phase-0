# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# Require and require_relative refer to a specific file that you would also like this file to access.
# require_relative accesses the file using a relative path, while require accesses the file using an absolute path.
#
require_relative 'state_data'

class VirusPredictor

  #Starts creating the class, and requests the necessary information to create the class.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end


  #Calls two other methods, predicted_deaths and speed_of_spread.
  def virus_effects
    predicted_deaths()
    speed_of_spread()
  end

  private

  #Predicts the amount of deaths due to the virus based on population density.
  def predicted_deaths()
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  #Predicts how quickly the virus will spread, in months, based on population density.
  def speed_of_spread() #in months
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

def print_state_data()
  STATE_DATA.each do |k, v|
    viruspredictor = VirusPredictor.new(k, v[:population_density], v[:population])
    viruspredictor.virus_effects
  end
end
#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects


#=======================================================================
# Reflection Section
=begin
* What are the differences between the two different hash syntaxes shown
in the state_data file?
  ** One of the syntax uses symbols while the other does not. Symbols insure uniqueness, however, they also take up more space in memory. As there are 50 space, it's possible that this was the reason a symbol was not used.
* What does require_relative do? How is it different from require?
  **
* What are some ways to iterate through a hash?
  **
* When refactoring virus_effects, what stood out to you about the
variables, if anything?
  **
* What concept did you most solidify in this challenge?
  **
=end