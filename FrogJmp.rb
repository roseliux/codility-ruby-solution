# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(x, y, d)
  # write your code in Ruby 2.2
  if x == y
    return 0
  else
    return (Float(y-x)/d).ceil
  end
end