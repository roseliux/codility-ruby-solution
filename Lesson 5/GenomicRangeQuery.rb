# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(s, p, q)
  # write your code in Ruby 2.2
  a = []
  p.each_with_index do |e, i|
    cut = s[p[i]..q[i]]
    if cut.index('A')
      a.push(1)
    elsif cut.index('C')
      a.push(2)
    elsif cut.index('G')
      a.push(3)
    else
      a.push(4)
    end
  end
  a
end