# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(a, k)
  # write your code in Ruby 2.2
  
  unless a.empty?
    for i in 1..k
      last = a.pop
      a.insert(0, last)
    end
  end
  
  return a
end