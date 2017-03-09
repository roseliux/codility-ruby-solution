# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(x, a)
  # write your code in Ruby 2.2
  path = {}

  a.each_with_index do |element, i|
    path[element] = true
    return i if path.size == x
  end
  -1
end
