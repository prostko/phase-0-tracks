# Brrr, it's cold out there! We're going to follow along with one of North America's most common mammals that we see all year round: the squirrel.
#
# Create a Squirrel class that can be initialized with a color and location. There are gray, red, black, and even albino squirrels and they live in locations like the city, state, woods, in town, whatever you feel like.
#
# For instance: one squirrel could be a gray squirrel who lives in the boonies, another instance of a squirrel could be red who lives in Manhattan. Initialize a couple of different squirrels to demonstrate this functionality.
# ----
class Squirrel
	attr_reader :color, :hibernation_status
	attr_accessor :location, :hoard_locations

	def initialize(color,location)
		p "Creating a #{color} squirrel who lives in #{location}"
		@color = color
		@location = location
		@hibernation_status = "asleep"
		@hoard_locations = {}
	end

	def wake_up
		@hibernation_status = "awake"
	end

	def sleep
		@hibernation_status = "asleep"
	end

	def store_nuts(location,amount)
		(@hoard_locations.has_key? location) ? @hoard_locations[location] += amount : @hoard_locations[location] = amount
	end

	def rand_location
		locations = []
		@hoard_locations.each do |loc,amnt|
			locations << loc
		end
		rand_location = locations.sample
	end

	def eat_something

		wake_up
		puts "**#{@hibernation_status} and hungry**"

		@hoard_locations[self.rand_location] -= 3
		p "**eating from #{rand_location}**"

		sleep
		p "**no longer hungry, and now #{@hibernation_status}"
	end

	def forget
		@hoard_locations.delete(self.rand_location)
	end
end

sammy = Squirrel.new("red", "DC")
p sammy.color
p sammy.location
  sammy.location = "NYC"
p sammy.location

# Our squirrels might want to find a new home base if too many humans or predators move in, but they can never change their color. Make the color readable from outside the class, and make the location readable and writeable.
# ----
p sammy.color
p sammy.location
  sammy.location = "NYC"
p sammy.location
# Contrary to popular belief, squirrels don't hibernate during the winter, they just sleep a lot!
#
# Create two instance methods: `wake_up` and `sleep`. These should update an instance variable in order to let us know if the squirrel is awake or not. Every squirrel should start out asleep when they are initialized.
# ----
p sammy.hibernation_status
p sammy.wake_up
p sammy.sleep
# In preparation for winter, squirrels and other small animals hide nuts to get them through the winter. Nuts are hidden in various locations.
#
# Create a `hoard_locations` data structure that will track two things: the location of a particular hoard (e.g. "knot hole" or "barn attic"), and how many nuts are stored there (e.g. 6). The `hoard_locations` should start out empty.
# ----
sammy.hoard_locations
# During the summer and fall, the squirrel has to hide their nuts. Create a `store_food` instance method that takes a hoard location and a number of nuts, and stores this in the `hoard_locations` data structure. If the hoard location already exists, this method should add to the existing number of nuts there. If the hoard location doesn't exist, it should create a new entry.
# ---
sammy.store_nuts("under the porch", 5)
sammy.store_nuts("roof", 5)
sammy.store_nuts("knot hole", 5)
p sammy.hoard_locations

sammy.store_nuts("knot hole",2)
p sammy.hoard_locations


# Every day during the winter, the squirrel will wake up and find one of his nut stores. Squirrels don't have a great memory so the squirrel will just find one of the stores and eat three of the nuts.
#
# Create an instance method called `eat_something` that will wake the squirrel up, choose a hoard location at random, remove a random number of nuts for the squirrel to eat, and then have the squirrel go back to sleep.
# ---
sammy.eat_something
p sammy.hoard_locations
# Squirrels hide their nuts in holes in the ground, but sometimes forget about them. Sad for the squirrel, but these can sprout into trees so yay!
#
# Create an instance method called `forget` that deletes a random hoard location from the squirrel's hoard locations and returns a string telling us that a new tree has sprouted.
# ---

sammy.forget
p sammy.hoard_locations









