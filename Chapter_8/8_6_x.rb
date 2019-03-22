# ruby Chapter_8/8_6_x.rb

puts 'moduleを利用した名前空間の作成'
puts '8.5.1 名前空間を分けて名前の衝突を防ぐ'

class Second
  def initialize(player, uniform_number)
    @player = player
    @uniform_number = uniform_number
  end
end

class Second
  def initialize(degits)
    @degits = degits
  end
end
Array

# この時、どっちもクラスにすると、定義がうまく行かない。
# モジュールの中に定義してしまえば衝突派しなくなる。
module Baseball
  class Second
    def initialize(player, uniform_number)
      @player = player
      @uniform_number = uniform_number
    end
  end
end

module Clock
  class Second
    def initialize(degits)
      @degits = degits
    end
  end
end
Baseball::Second.new('Alice', 13)
Clock::Second.new(13)