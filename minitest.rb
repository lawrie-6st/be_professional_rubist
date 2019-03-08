require 'spec/be_professional_rubist_spec'
require 'minitest/autorun'
require 'minitest/assertions'
# ruby minitest.rb
class SampleTest < Minitest::MiniTest
  def test_sample
    assert_equal 'RUBY', 'ruby'.upcase
  end
end
