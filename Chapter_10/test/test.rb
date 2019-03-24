# ruby Chapter_10/test/test.rb
require 'minitest/autorun'
require_relative '../lib/../../Chapter_10/lib/world_synce_test'

class EffectsTest < Minitest::Test
  def test_reverve
    effect = Effects.reverse
    assert_equal 'ybuR si !nuf', effect.call('Ruby is fun!')
  end

  def test_echo
    effect = Effects.echo(2)
    assert_equal 'RRuubbyy iiss ffuunn!!', effect.call('Ruby is fun!')
    effect = Effects.echo(3)
    assert_equal 'RRRuuubbbyyy iiisss fffuuunnn!!!', effect.call('Ruby is fun!')
  end
  def test_loud
    effect = Effects.laud(2)
    assert_equal 'RUBY!! IS!! FUN!!!', effect.call('Ruby is fun!')
    effect = Effects.laud(3)
    assert_equal 'RUBY!!! IS!!! FUN!!!!', effect.call('Ruby is fun!')
  end

  def test_worldsynth
    synth = WorldSynth.new
    synth.add_effect(Effects.echo(2))
    synth.add_effect(Effects.laud(3))
    synth.add_effect(Effects.reverse)
    assert_equal '!!!YYBBUURR !!!SSII !!!!!NNUUFF',synth.play('Ruby is fun!')
  end
end