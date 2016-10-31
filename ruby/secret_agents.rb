# Encrypt method
# Accept string as parameter
# Use while loop to go through entire string
# 	Access first character using index
#   Change character to the next letter in the alphabet
#   Increment the index by 1
#   Loop ends after all letters have been changed
# Return the encrypted string

def encrypt(str)
	i = 0
	while i < str.length
		if str[i] == "z"
			str[i] = "a"
		else
			str[i] = str[i].next!
		end
		i += 1
	end
	return str
end

# Decrypt method
# Accept string as parameter
# Use while loop to go through entire string
#   Access first character using index
#   Change character to the previous letter in the alphabet using cipher
#   Increment the index by 1
#   Loop ends after all letters have been changed
# Return the decrypted string

def decrypt(str)
	i = 0
	cipher = "abcdefghijklmnopqrstuvwxyz"
	while i < str.length
		# Finds index of current character in alphabet and changes str[i] to previous character
		str[i] = cipher[cipher.index(str[i]) - 1]
		i += 1
	end
	return str
end

puts encrypt("abc")
puts encrypt("zed")
puts decrypt("bcd")
puts decrypt("afe")