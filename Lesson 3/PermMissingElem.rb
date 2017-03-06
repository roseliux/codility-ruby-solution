# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(a)
  # write your code in Ruby 2.2
  numbers = Array(1..(a.size + 1))
  res = numbers - a
  res[0]
end