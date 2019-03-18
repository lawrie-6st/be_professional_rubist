# ruby Chapter_8/8_4_x/text.rb
require 'minitest/autorun'
require_relative '../../Chapter_8/8_4_x/lib'

class DeepFreezableTest < Minitest::Test
  def test_deep_freeze_to_hash
    assert_equal({'JAPAN' => 'yen', 'US' => 'doller', 'INDIA' => 'rupee'}, Bank::CURRENCIES)
  end
  assert Bank::CURRENCIES.frozen?

  assert Bank::CURRENCIES.all? { |key, value| key.frozen? && value.frozen? }
end

