# alias method accepts string as parameter
# The string contains a person's full name
# The first and last names will be swapped
# 	The first and last names will be split into an array
# 	The contents of the array will be reversed
#   The contents will be joined together in a new string
# The characters in the name will be changed
# 	The names will be split into characters
# 	Each vowel will be changed to the next vowel in the alphabet
# 	Each consonant will be changed to the next consonant in the alphabet
# The array of characters will be joined in a new string
# The method will return the new string

def pseudonym(str)
	rev = str.split(' ')
	rev.reverse!
	rev_name = rev.join(' ')

	vowel = "aeiou"
	consonant = "bcdfghjklmnpqrstvwxyz"

	scrambler = rev_name.chars
	scrambler.map! do |letter|
		# Index moves backward through strings to handle edge cases 
		if vowel.include? letter
			letter = vowel[vowel.index(letter) - (vowel.length - 1)]
		elsif consonant.include? letter
			letter = consonant[consonant.index(letter) - (consonant.length - 1)]
		else
			# Handles space
			letter = letter
		end
	end

	new_name = scrambler.join('')

	return new_name
end

# User Interface
# User enters a name
# Name is turned into a fake name through pseudonym method
# Fake name is stored in array
# Process loops until user enters 'quit'
# Array of fake names is printed

fake_names = Array.new

puts "Enter a name (type 'quit' to exit):"
real_name = gets.chomp

while real_name != "quit"
	codename = pseudonym(real_name)
	fake_names.push(codename)

	puts "Enter another name (type 'quit' to exit):"
	real_name = gets.chomp
end

puts fake_names.inspect


