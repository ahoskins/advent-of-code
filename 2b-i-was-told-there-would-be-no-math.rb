total = 0
ARGF.each do |line|
	# (&:to_i) same as (|obj| obj.to_i)
	a, b, c  = line.split('x').map(&:to_i).sort
	total += 
		# ribbin wrap
		2*a + 2*b + 

		# bow
		a*b*c
end

puts total