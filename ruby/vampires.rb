# Ask questions

puts "What is your name?"
fullname = gets.chomp

puts "How old are you?"
s1 = gets.chomp
age = s1.to_i

puts "What year were you born?"
s2 = gets.chomp
year = s2.to_i

puts "Our company cafeteria serves garlic bread. Should we order some for you? (Y/N)"
order = gets.chomp

puts "Would you like to enroll in the company’s health insurance? (Y/N)"
health = gets.chomp

# Set conditional variables

if (fullname == "Drake Cula" || fullname == "Tu Fang")
	vampire_alias = true
else
	vampire_alias = false
end

if (age != (2016 - year) && age != (2015 - year))
	wrong_age = true
else
	wrong_age = false
end

if (order == "N")
	hates_garlic_bread = true
else
	hates_garlic_bread = false
end

if (health == "N")
	no_insurance = true
else
	no_insurance = false
end

# Check conditions

result = "Results inconclusive."

if (!wrong_age && (!hates_garlic_bread || !no_insurance))
	result = "Probably not a vampire."
end

if (wrong_age && (hates_garlic_bread || no_insurance))
	result = "Probably a vampire."
end

if (wrong_age && hates_garlic_bread && no_insurance)
	result = "Almost certainly a vampire."
end

if (vampire_alias && wrong_age && hates_garlic_bread && no_insurance)
	result = "Definitely a vampire."
end

puts result
