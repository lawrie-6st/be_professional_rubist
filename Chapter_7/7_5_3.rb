# ruby Chapter_7/7_5_3.rb


class Product
  attr_reader :name,:price
  def initialize(name, price)
    @name = name
    @price = price
  end

  def self.format_price(price)
    "#{price}円"
  end

  def to_s
    formatted_price = Product.format_price(price)
    "name: #{name}, price: #{formatted_price}"
  end
end

product = Product.new('great movie', 1000)
puts product.to_s