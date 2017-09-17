# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(a)
  # write your code in Ruby 2.2
  count = 0
  a.each_with_index do |v,i|
    return -1 if count > 1000000000
    return count if a[i..-1].count(0) == 0
    count = count + a[i..-1].count(1) if v == 0
  end
  count
end

require 'minitest/autorun'
class Tests < Minitest::Test
  def test_example_1
    assert_equal 5, solution([0, 1, 0, 1, 1])
  end

  def test_example_2
    assert_equal 0, solution([1,0])
  end

  def test_example_3
     assert_equal 1, solution([0,1])
  end
end
