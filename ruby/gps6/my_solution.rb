# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#Require_relative looks for the file in the directory that you are asking of it- looks in the directory 
#Require- looks at very specific directories and where in that directory- looks in pre-set places that are related to Ruby
#It allows two ruby files to be connected and for one file to pull information from the other
#Loading the file at the top of the ruby file in order to use its information in the class/method, etc.
#Require- is different because it pulls from a database instead of another ruby file- convenient subset
#Where the program starts looking from different location
require_relative 'state_data'

class VirusPredictor
attr_reader :state
  #initialize: allowing the user to set the instance variables to use throughout the class
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end



  #virus_effects: pulling data from state_data.rb and taking information to plug into the method (the final equation)
  def virus_effects
    predicted_deaths
    speed_of_spread
  end


  private #does method inside of the class but doesn't but can not access method outside of the class

  #take information from state_data and predict number of deaths in those states based on
  #population density, population in general of that state
  def predicted_deaths
    # predicted deaths is solely based on population density
    
    if @population_density >= 200
      number_of_deaths = num_death_setter(0.4)
    elsif @population_density >= 150
      number_of_deaths = num_death_setter(0.3)
    elsif @population_density >= 100
      number_of_deaths = num_death_setter(0.2)
    elsif @population_density >= 50
      number_of_deaths = num_death_setter(0.1)
    else
      number_of_deaths = num_death_setter(0.5)
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

def num_death_setter(percentage)
  (@population * percentage).floor
end

  # calculating the speed at which the population will become infected based on the states population density
  def speed_of_spread #in months
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

=begin  def speed_setter(speed, gain)
    speed += gain
end
=end  

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state
#pulling information from state_Data and plugging it into class VirusPredictor


def show_all_states(hash)
  hash.each do |key,state|
   all_state = VirusPredictor.new(key, state[:population_density], state[:population])
   all_state.virus_effects
  end
end

show_all_states(STATE_DATA)


=begin
alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects
=end

#=======================================================================
# Reflection Section
=begin
-- One hash syntax uses hash rocket notation and also new lines between each key/value. 
  the other uses colon notation, which makes use of syntactic sugar for symbols
-- Require_relative begins its search for an appropirate file in the current directory, and can branch outward
  Require begins its search in the app folder for gems and ruby libraries and things, and can possibly be changed
-- You can iterate though a hash with each, map, any?, all?, keep_if, delete_if, each_key, each_value, a bunch of different methods will do it
-- The variables are all class instance variables, so they can be used anywhere in the class. Some were passed that didn't need to be
-- Require vs Require_relative, this is a difficult one to explain, and stackExchange didn't do a good job






=end



