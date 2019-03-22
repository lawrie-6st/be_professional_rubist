# ruby Chapter_7/7_7_3.rb
# プライベートクラスはサブクラスでも呼び出せる。


class Product
  attr_reader :name, :price
  def initialize(name,price)
    @name = name
    @price = price
  end
  def to_s
    "name:#{name},price:#{price}"
  end
  private
  def rename_title
    name = 'bob is big'
  end
end

class DVD < Product
  attr_reader :running_time
  def initialize(name, price,running_time)
    # 引数をすべてスーパークラスのメソッドにわたす。つまりsuper(name,price)と一緒
    super(name,price)
    @running_time = running_time
  end
  
  def rename
    rename_title
  end
end

dvd = DVD.new('agreat movie',1000,100000)
puts dvd.rename
puts dvd.name
puts dvd.price
puts dvd.running_time
puts dvd.to_s

