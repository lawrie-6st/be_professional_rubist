# ruby Chapter_5/5.5.x/test/convert_length_test.rb
require 'minitest/autorun'
require_relative '../../../Chapter_5/5.5_x/lib/convert_length'

class ConvertText < Minitest::Test
  def test_convert_length
    assert_equal 39.37, convert_length(1, 'm', 'in')
  end
end