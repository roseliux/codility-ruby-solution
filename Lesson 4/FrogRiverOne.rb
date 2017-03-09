# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(x, a)
  # write your code in Ruby 2.2
  path = {}

  a.each_with_index do |element, i|
    path[element] = true
    return i if path.size == x
  end
  -1
end

require 'minitest/autorun'
class Tests < Minitest::Test
  def test_example_input
    assert_equal 6, solution(5, [1, 3, 1, 4, 2, 3, 5, 4])
  end

  def test_not_possible
    assert_equal(-1, solution(5, [1, 2, 1, 2, 1, 4, 5]))
  end

  def test_immediately
    assert_equal 0, solution(1, [1, 1])
  end
end
