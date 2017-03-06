# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(a)
  # write your code in Ruby 2.2
  unique_numbers = a.uniq
  
  unique_numbers.each do |element|
    if a.count(element).odd?
      return element
    end
  end
end