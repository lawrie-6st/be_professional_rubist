module Effects
  def self.reverse
    ->(words) do
      words
          .split(' ')
          .map(&:reverse)
          .join(' ')
    end
  end

  def self.echo(rate)
    ->(words) do
      words.chars.map { |c| c == ' ' ? c : c * rate }.join
    end
  end

  def self.laud(level)
    ->(words) do
      words.split(' ').map {|word| word.upcase + '!' * level}.join(' ')
    end
  end
end



class WorldSynth
  def initialize
    @effects = []
  end

  def add_effect(effect)
    @effects << effect
  end

  def play(original_word)
    @effects.inject(original_word) do |words, effect|
      effect.call(words)
    end
  end
end
