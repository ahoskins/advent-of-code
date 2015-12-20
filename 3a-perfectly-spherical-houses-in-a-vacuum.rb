hash = Hash.new(false)
pos = [0, 0]
ARGF.each_char do |dir|
	case dir
	when ">"
		pos[0] += 1
	when "<"
		pos[0] -= 1
	when "^"
		pos[1] += 1
	when "v"
		pos[1] -= 1
	end

	hash[pos.join(",")] = true
end

puts hash.length