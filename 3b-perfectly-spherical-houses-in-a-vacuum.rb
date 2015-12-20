hash = Hash.new(false)
santa = [0, 0]
robo_santa = [0, 0]

ARGF.each_char.each_with_index do |dir, i|
	if i.even?
		# real santa's turn
		case dir
		when ">"
			santa[0] += 1
		when "<"
			santa[0] -= 1
		when "^"
			santa[1] += 1
		when "v"
			santa[1] -= 1
		end

		hash[santa.join(",")] = true
	else 
		# robo_santa
		case dir
		when ">"
			robo_santa[0] += 1
		when "<"
			robo_santa[0] -= 1
		when "^"
			robo_santa[1] += 1
		when "v"
			robo_santa[1] -= 1
		end

		hash[robo_santa.join(",")] = true
	end
end

puts hash.length