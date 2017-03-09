# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(a)
  # write your code in Ruby 2.2
  left = 0
  right = a.reduce(:+)
  difference = []

  for i in 1..(a.size-1) do
    left += a[i-1]
    right -= a[i-1]
    absolute = (left - right).abs
    difference.push(absolute)
  end
  #puts "#{difference}"
  return difference.min
end
