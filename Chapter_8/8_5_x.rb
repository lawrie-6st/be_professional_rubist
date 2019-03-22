# ruby Chapter_8/8_5_x.rb


module Loggable

end
class Product
include Loggable
end

puts Product.include?(Loggable)
puts Product.included_modules

puts '8.5.2 include先のメソッドを使うモジュール'
module Taggable
  def price_tag
    puts "#{price}円"
  end
end

class Product_v2
  include Taggable
  def price
    1000
  end
end

product = Product_v2.new
product.price_tag

puts '8.5.3 enumerable モジュール'
puts Array.include?(Enumerable)
puts Hash.include?(Enumerable)
puts Range.include?(Enumerable)