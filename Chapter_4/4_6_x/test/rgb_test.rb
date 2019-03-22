require 'minitest/autorun'
require_relative '../../4_6_x/lib/rgb'
class RgbTest < Minitest::Test
  def test_to_hex
    assert_equal '#000000', to_hex(0, 0, 0)
    assert_equal '#ffffff', to_hex(255, 255, 255)
    assert_equal '#043c78', to_hex(4, 60, 120)

    assert_equal '#000000', to_hex_v2(0, 0, 0)
    assert_equal '#ffffff', to_hex_v2(255, 255, 255)
    assert_equal '#043c78', to_hex_v2(4, 60, 120)
  end

  def test_to_ints
    assert_equal [0, 0, 0], to_ints('#000000')
    assert_equal [255, 255, 255], to_ints('#ffffff')
    assert_equal [4, 60, 120], to_ints('#043c78')

    assert_equal [0, 0, 0], to_ints_v2('#000000')
    assert_equal [255, 255, 255], to_ints_v2('#ffffff')
    assert_equal [4, 60, 120], to_ints_v2('#043c78')
  end
end