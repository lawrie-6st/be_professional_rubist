# ruby Chapter_3/3_2_x_minitest.rb
require 'minitest/autorun'

class SampleTest < Minitest::Test
  def test_sample
    assert_equal 'RUBY', 'ruby'.upcase
  end

  def test_sample_failure_case
    assert_equal 'RUBY', 'ruby'.capitalize
  end

  def test_sample_error_case
    assert_equal 'RUBY', nil.upcase
  end
end