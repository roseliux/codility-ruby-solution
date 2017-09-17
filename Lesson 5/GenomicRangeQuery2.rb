# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(s, p, q)
  # write your code in Ruby 2.2
  hash = { 'A'=> 1, 'C'=> 2, 'G'=> 3, 'T'=> 4 }
  array = []
  p.each_with_index do |e, i|
    low = 4
    cut = s[p[i]..q[i]]
    cut.each_char { |c| low = hash[c] if hash[c] < low }
    array.push(low)
  end
  array
end