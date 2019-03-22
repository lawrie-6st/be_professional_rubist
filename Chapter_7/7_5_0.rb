# ruby Chapter_7/7_5_0.rb
class User
  attr_accessor :name
  def initialize(name)
    @name = name
  end

  def hello
    # selfなしでnameメソッドを呼ぶ
    "hello,i am #{name}"
  end

  def hi
    # selfなしでnameメソッドを呼ぶ
    "hi,i am #{self.name}"
  end

  def my_name
    "my name is #{@name}"
  end
end



user = User.new('alice')
puts user.hello
puts user.hi
puts user.my_name


