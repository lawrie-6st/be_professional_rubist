# ruby Chapter_3/3_3_x_automation_fizz_buzz_test.rb
require 'minitest/autorun'


def fizz_buzz(number)
  if (number % 15).to_f == 0
    p 'fizz_buzz'
  elsif (number % 3).to_f == 0
    p 'fizz'
  elsif (number % 5).to_f == 0
    p 'buzz'
  else
    p number.to_s
  end
end

class FizzBuzzTest <Minitest::Test
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