# ruby Chapter_8/8_9_x.rb
module A
  def to_s
    "<A>#{super}"
  end
end

module B
  def to_s
    "<B>#{super}"
  end
end

class Product
  def to_s
    "<Product>#{super}"
  end
end


class DVD < Product
  include A
  include B
  def to_s
    "<DVD>#{super}"
  end
end

dvd = DVD.new
puts dvd.to_s
puts DVD.ancestors
# 同じ名前のメソッドが複数ある場合、全部がくっついて、動作する。



puts '8.9.2'
module Greeting
  def hello
    'hello.'
  end
end

module Aisatu
  def konnnitiwa
    'こんにちわ'
  end
end

class User
  # Aisatuモジュールだけをインクルードする。
  include Aisatu
  include Greeting
end
user = User.new
puts user.konnnitiwa
puts user.hello
puts User.ancestors

puts '8.9.3 prependで書き換え'

module AA
  def to_s
    "<A>#{super}"
  end
end
class Product_v3
  prepend AA
  def to_s
    "<Product>#{super}"
  end
end
product = Product_v3.new
puts product.to_s

puts '8.9.4 prependで既存のメソッドを置き換える。'
class Product_v4
  def name
    puts 'a great movie'
  end
end

product = Product_v4.new
product.name

module NameDecorator
  def name
    "<<#{super}>>"
  end
end

class Product_v4
  prepend NameDecorator
end
product = Product_v4.new
product.name

'8.9.5 有効範囲を指定できる。refinements'
module StringShuffle
  refine String do
    def shuffle
      chars.shuffle.join
    end
  end
end


class User_v2
  using StringShuffle
  def initialize(name)
    @name = name
  end

  def shuffle_name
    @name.shuffle
  end
end
user = User_v2.new('Alize')
puts user.shuffle_name

puts 'ここでの味噌は、shuffleがクラスから継承されたものだと使えるようになるけど、もともとのシャッフルメソッドが使えなくなる。
なぜならば、書き換えてしまっているから。'

