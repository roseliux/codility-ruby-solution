# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(a)
  # write your code in Ruby 2.2
  permutation = Array(1..a.size)
  # puts permutation
  return 1 if permutation - a == []
  0
end
