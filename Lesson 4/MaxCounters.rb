# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(n, a)
  # write your code in Ruby 2.2
  array = [0] * n
  a.each do |element|
    index = element - 1
    # puts index
    if index >= n
      array = [array.max] * n
    else
      array[index] += 1
    end
  end
  # puts array
  array
end
