# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(n)
  # write your code in Ruby 2.2
  bin = n.to_s(2)
  return 0 unless bin =~ /0/i
  max = 0
  count = 0

  bin.each_char do |c|
  	if c == '1'
	  max = count if count > max
	  count = 0
  	else
  	  count = count + 1
  	end
  end
  max
end