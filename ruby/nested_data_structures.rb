# Airport data structure
# Outer hash: Terminals
# Inner hash:
# 	Number of gates
# 	List of airlines

airport = {

	terminal_one: {
		num_gates: 22,
		airlines: ["Delta Airlines", "Frontier Airlines",
				   "Southwest Airlines"]
		
	},

	terminal_two: {
		num_gates: 10,
		airlines: ["American Airlines", "Virgin America"]
	},

	terminal_three: {
		num_gates: 31,
		airlines: ["United Airlines", "United Express"]
	}

}

puts airport[:terminal_one][:num_gates]
puts airport[:terminal_two][:airlines]
puts airport[:terminal_three][:airlines][1]
puts airport[:terminal_one][:airlines].reverse