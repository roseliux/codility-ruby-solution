# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(a, b, k)
  # write your code in Ruby 2.2
  count = 0
  for i in a..b do
    count = count + 1 if i%k == 0
  end
  count
end