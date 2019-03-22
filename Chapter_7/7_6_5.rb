# ruby Chapter_7/7_6_5.rb
#
# superでスーパークラスのメソッドを呼び出す。

class Product
  attr_reader :name, :price
  def initialize(name,price)
    @name = name
    @price = price
  end
end
product = Product.new('a great movie',1000)
puts product.name
puts product.price

class DVD < Product
  attr_reader :running_time
  def initialize(name, price)
    # 引数をすべてスーパークラスのメソッドにわたす。つまりsuper(name,price)と一緒
    super
  end
end

dvd = DVD.new('agreat movie',1000)
puts dvd.name
puts dvd.price
puts dvd.running_time