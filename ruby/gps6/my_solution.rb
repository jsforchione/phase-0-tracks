# Virus Predictor

# I worked on this challenge [by myself, with: Nick ].
# We spent [2] hours on this challenge.

# EXPLANATION OF require_relative
# require relative accesses your own files, whereas require accesses gems, 
# and built in modules in Ruby (Math, Time, etc). 

require_relative 'state_data'

class VirusPredictor

  # when an object is instantiated this method is called with the three arguments
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # combines predicted_deaths method and the speed_of_spread method into one   
  #  method call
  
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private
  # this argument takes in three arguments and then evaluated depending on the  #arguments, and then prints out a statement with the numer of predicted deaths in #a state.
  def predicted_deaths
    # predicted deaths is solely based on population density
    # Refactor using case statement
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
    
    # Refactor to return
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"
    return number_of_deaths

  end
# takes in two arguments, and then calculates the speed of spread of the virus, #and then prints the a statement with the speed in months.
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    rate = 0

    if @population_density >= 200
      rate = 0.5
    elsif @population_density >= 150
      rate = 1
    elsif @population_density >= 100
      rate = 1.5
    elsif @population_density >= 50
      rate = 2
    else
      rate = 2.5
    end

    puts " and will spread across the state in #{rate} months.\n\n"
    return rate

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

# Create 50 state report
STATE_DATA.each do |state, data| 
  VirusPredictor.new(state, data[:population_density], data[:population]).virus_effects
end



#=======================================================================
# Reflection Section
# The first way is using the hash rocket, so the literal syntax, the other uses the symbol
# method, or syntactic sugar.
# Require relative accesses your own files, whereas require accesses gems, 
# and built in modules in Ruby (Math, Time, etc).
# You can iterate through a hash with the .each method, .times method, .map, etc.
# We didn't need to pass in arguments at all since we were using the instance variables within
# the methods that were within the virus_effects method.
# Instance variables and arguments, and when to pass in arguments vs. when not to. 