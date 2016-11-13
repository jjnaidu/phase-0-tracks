# module Shout
# 	def self.yell_angrily(words)
# 		words + "!!!" + " :("
# 	end

# 	def self.yelling_happily(words)
# 		words + "!!!" + " :)"
# 	end
# end

# puts Shout.yell_angrily("NOOOOOOOOOOOOOO")
# puts Shout.yelling_happily("YEEEEEEEEEEEEES")

module Shout
	def yell_angrily(words)
		words + "!!!" + " :("
	end

	def yelling_happily(words)
		words + "!!!" + " :)"
	end
end

class Vader
	include Shout
end

class Bison
	include Shout
end

darth_vader = Vader.new
puts darth_vader.yell_angrily("NOOOOOOOOOOOOOOOOOOOOOOOOO")
puts darth_vader.yelling_happily("I am your father")

m_bison = Bison.new
puts m_bison.yell_angrily("Anyone who opposes me will be destroyed!")
puts m_bison.yelling_happily("YES! YES")