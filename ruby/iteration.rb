# Block

def fav_colors
	color1 = "green"
	color2 = "red"
	puts "Status: block not printed"
	yield(color1, color2)
	puts "Status: block printed"
end

fav_colors { |color1, color2| 
	puts "My favorite colors are #{color1} and #{color2}" }

# Array

numbers = [1, 2, 3, 4, 5]

numbers.each { |number| puts number + 1}
p numbers

numbers.map! { |number| number * 2}
p numbers

# Hash

fav_teams = {
	baseball: "San Francisco Giants",
	football: "San Francisco 49ers",
	ice_hockey: "San Jose Sharks",
	basketball: "Golden State Warriors"
}

fav_teams.each do |sport, team|
	puts "My favorite #{sport} team is the #{team}"
end

# Other methods from documentation

# 1) Delete based on condition

puts numbers.delete_if {|number| number < 5}
puts fav_teams.delete_if {|sport, team| sport == :football}

# 2) Filtering based on condition

puts numbers.select {|number| number > 5}
puts fav_teams.select {|sport, team| sport == :baseball}

# 3) Different filtering method

puts numbers.reject {|number | number < 5}
puts fav_teams.reject {|sport, team| sport == :ice_hockey}

# 4) Remove items until condition is met

puts numbers.drop_while {|number| number <= 6}
