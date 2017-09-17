# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(a)
  # write your code in Ruby 2.2
  total_sum = (1..(a.count+1)).reduce(:+)
  total_arr = a.reduce(:+) || 0
  total_sum - total_arr
end