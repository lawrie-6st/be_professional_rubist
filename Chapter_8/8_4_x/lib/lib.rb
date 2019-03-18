class Team
  extend DeepFreezable
  COUNTRIES = deep_freeze(%w[JAPAN US INDIA])
end
Team::COUNTRIES.frozen?
Team::COUNTRIES.all?(&:frozen?)

class Bank
  extend DeepFreezable
  CURRENCIES = deep_freeze('JAPAN' => 'yen', 'US' => 'doller', 'INDIA' => 'rupee')
end
Bank::CURRENCIES.frozen?
Bank::CURRENCIES.all? { |key, value| key.frozen? && value.frozen? }

module DeepFreezable
  def deep_freeze(array_or_hash)
    case array_or_hash
    when Array
      array_or_hash.each(&:freaze)
    when Hash
      array_or_hash.each do |key, value|
        key.freeze
        value.freeze
      end
    end
    array_or_hash.freeze
  end
end
