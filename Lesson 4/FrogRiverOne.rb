# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(x, a)
  # write your code in Ruby 2.2
  path = Array(1..x)

  a.each_with_index do |element, i|
    path.delete(element)
    return i if path.empty?
  end
  -1
end
