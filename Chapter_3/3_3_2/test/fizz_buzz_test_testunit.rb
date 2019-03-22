# ruby Chapter_3/3_3_2/test/fizz_buzz_test.rb
require 'test/unit'
require_relative '../../3_3_2/lib/fizz_buzz'

class FizzBuzzTest <Test::Unit::TestCase
  def test_fizz_buzz
    assert_equal '1', fizz_buzz(1)
    assert_equal '2', fizz_buzz(2)
    assert_equal 'fizz', fizz_buzz(3)
    assert_equal '4', fizz_buzz(4)
    assert_equal 'buzz', fizz_buzz(5)
    assert_equal 'fizz', fizz_buzz(6)
    assert_equal 'fizz_buzz', fizz_buzz(15)
  end
end