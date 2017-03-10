# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(a)
  # write your code in Ruby 2.2
  a = a.uniq.select { |i| i if i > 0 }
  return 1 if a.empty?

  b = Array(1..a.size)
  res = b - a

  if res.empty?
    a.max + 1
  else
    res.min
  end
end

require 'minitest/autorun'
class Tests < Minitest::Test
  def test_negatives
    assert_equal 1, solution([-1])
  end

  def test_two_val
    assert_equal 2, solution([1])
  end

  def test_one_val
    assert_equal 1, solution([2, 3, 4, 2])
  end

  def test_large_2
    array = Array(1..100_000)
    assert_equal 100_001, solution(array)
  end

  def test_positives
    assert_equal 5, solution([1, 3, 6, 4, 1, 2])
  end
end
