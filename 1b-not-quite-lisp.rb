f = 0
ARGF.each_char.each_with_index do |c, i|
    if c == "("
        f += 1
    elsif c == ")"
        f -= 1
    end

    if f < 0
    	puts i + 1
    	break
    end
end