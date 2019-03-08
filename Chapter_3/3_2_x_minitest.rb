# ruby Chapter_3/3_2_x_minitest.rb
require 'minitest/autorun'

class SampleTest < Minitest::Test
  def sample_test
    assert_equal 'foo', 'foo'
  end
end