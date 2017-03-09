# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(a)
  # write your code in Ruby 2.2
  size = a.size
  permutation = Array(1..size)
  #puts permutation
  if permutation - a  == []
    return 1
  else
    return 0
  end
end
