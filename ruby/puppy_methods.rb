class Puppy

  def initialize
  	puts "Initializing new puppy instance..."
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(int)
  	count = 0
  	until count == int
  		puts "Woof!"
  		count += 1
  	end
  end

  def roll_over
  	puts "*rolls over*"
  end

  # 7 human years = 1 dog year
  def dog_years(human_years)
  	puts human_years / 7
  end

  def play_dead
  	puts "RIP"
  	puts "...just kidding!"
  end

end

class Airplane

	def initialize
		puts "Initializing new Airplane instance ..."
	end

	def takeoff
		puts "Now taking off from San Francisco"
	end

	def landing
		puts "Now landing in Chicago"
	end

end

# Test Puppy class

spot = Puppy.new
spot.fetch("ball")
spot.speak(3)
spot.roll_over
spot.dog_years(14)
spot.play_dead
puts ""

# Create 50 instances of Airplane class using loop
# Store each instance in an array
# Iterate through array and call methods for each instance

count = 0
airplanes = []

until count == 50
	airplanes[count] = Airplane.new
	count += 1
end

airplanes.each do |plane|
	plane.takeoff
	plane.landing
	puts ""
end

