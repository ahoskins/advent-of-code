require "digest"

prefix = gets.chomp
num = 0
loop do
    md5 = Digest::MD5.hexdigest(prefix + num.to_s)
    break if md5 =~ /^0{6}/
    num += 1
end

puts num