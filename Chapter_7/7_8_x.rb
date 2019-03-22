# ruby Chapter_7/7_8_x.rb

class Product
  DFAULT_PRICE = 1000
end

puts Product::DFAULT_PRICE
Product::DFAULT_PRICE = 4000
puts Product::DFAULT_PRICE
Product.freeze # 再代入できなくなる。
# Product::DFAULT_PRICE = 4000

class Product_v2
  NAME = 'A Product'
  SOME_NAMES = ['Foo', 'Bar', 'Baz']
  SOME_PRICES = {'Foo' => 1000, 'Bar' => 2000, 'Baz' => 3000}

  Product_v2::NAME.upcase!
  puts Product_v2::NAME

  Product_v2::SOME_NAMES << 'hoge'
  puts Product_v2::SOME_NAMES

  Product_v2::SOME_PRICES['hoge'] = 4000
  puts Product_v2::SOME_PRICES


end