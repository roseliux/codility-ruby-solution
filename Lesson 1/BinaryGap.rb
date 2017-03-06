# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(n)
  # write your code in Ruby 2.2
  bin = n.to_s(2)
  binary_gap = 0
  one = bin.index('1')
  
  for i in 1..(bin.size-1)
    current_string = bin[one..i].to_s
    #puts "string #{current_string}, count #{current_string.count('0')} "
    if bin[i] == '1'
      one = i
      count_zeros = current_string.count('0')
      if binary_gap < count_zeros
        binary_gap = count_zeros
      end
    end
  end
  return binary_gap
end