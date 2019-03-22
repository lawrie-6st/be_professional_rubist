# ruby Chapter_7/7_6_6.rb
# メソッドのオーバーライド


class Product
  attr_reader :name, :price
  def initialize(name,price)
    @name = name
    @price = price
  end

  def to_s
    "name:#{name},price:#{price}"
  end
end

class DVD < Product
  attr_reader :running_time
  def initialize(name, price,running_time)
    # 引数をすべてスーパークラスのメソッドにわたす。つまりsuper(name,price)と一緒
    super(name,price)
    @running_time = running_time
  end
end

dvd = DVD.new('agreat movie',1000,100000)
puts dvd.name
puts dvd.price
puts dvd.running_time
puts dvd.to_s
