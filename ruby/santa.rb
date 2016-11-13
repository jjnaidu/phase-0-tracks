class Santa
	attr_reader :age, :ethnicity
	attr_accessor :gender

	def initialize(gender, ethnicity)
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", 
			"Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end

	def speak
		puts "Ho, ho, ho! Haaaapy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}!"
	end

	def celebrate_birthday
		@age += 1
	end

	def get_mad_at(reindeer)
		@reindeer_ranking.delete(reindeer)
		@reindeer_ranking.push(reindeer)
		p @reindeer_ranking
	end

end

# Create Santa objects
santas = []
santas << Santa.new("male", "Latino")
santas << Santa.new("female", "white")
santas << Santa.new("agender", "black")

# Test methods
santas[0].speak
santas[0].eat_milk_and_cookies("snickerdoodle")

santas[1].celebrate_birthday
puts "santas[1] age: #{santas[1].age}"
puts "santas[1] ethnicity: #{santas[1].ethnicity}"

santas[2].get_mad_at("Dancer")
santas[2].gender = "gender fluid"
puts "santas[2] gender: #{santas[2].gender}"
