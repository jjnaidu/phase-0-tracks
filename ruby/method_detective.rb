# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

# "iNvEsTiGaTiOn".<swapcase>
# => “InVeStIgAtIoN”

puts "iNvEsTiGaTiOn".swapcase

# "zom".<insert(1, 'o')>
# => “zoom”

puts "zom".insert(1, 'o')

# "enhance".<center(16)>
# => "    enhance    "

puts "enhance".center(16)

# "Stop! You’re under arrest!".<upcase>
# => "STOP! YOU’RE UNDER ARREST!"

puts "Stop! You’re under arrest!".upcase

# "the usual".<concat(" suspects")>
# "the usual".<insert(9, " suspects")>
#=> "the usual suspects"

puts "the usual".concat(" suspects")
puts "the usual".insert(9, " suspects")

# " suspects".<insert.(0, "the usual")>
# => "the usual suspects"

puts " suspects".insert(0, "the usual")

# "The case of the disappearing last letter".<chop>
# => "The case of the disappearing last lette"

puts "The case of the disappearing last letter".chop

# "The mystery of the missing first letter".<slice(1..-1)>
# => "he mystery of the missing first letter"

puts "The mystery of the missing first letter".slice(1..-1)

# "Elementary,    my   dear        Watson!".<squeeze(" ")>
# => "Elementary, my dear Watson!"

puts "Elementary,    my   dear        Watson!".squeeze(" ")

# "z".<getbyte(0)>
# => 122 
# (What is the significance of the number 122 in relation to the character z?)

puts "z".getbyte(0)

# "How many times does the letter 'a' appear in this string?".<count("a")>
# => 4

puts "How many times does the letter 'a' appear in this string?".count("a")