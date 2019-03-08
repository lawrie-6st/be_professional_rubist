# frozen_string_literal: true
# ruby Chapter_3/3_2_x_minitest.rb
require '/minitest/autorun'
require 'minitest/assertions'
class SampleTest < Minitest::MiniTest
  def test_sample
    assert_equal 'RUBY', 'ruby'.upcase
  end
end