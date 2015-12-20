total = 0
ARGF.each do |line|
	# (&:to_i) same as (|obj| obj.to_i)
	a, b, c  = line.split('x').map(&:to_i).sort
	total += 
		# surface area
		2*a*b + 2*a*c + 2*b*c + 

		# smallest side
		a*b
end

puts total