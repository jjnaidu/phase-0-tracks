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

	return rev_name
end

name = "Felicia Torres"
codename = pseudonym(name)
puts codename
