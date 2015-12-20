f = 0
ARGF.each_char do |c|
    if c == "("
        f += 1
    elsif c == ")"
        f -= 1
    end
end

puts f