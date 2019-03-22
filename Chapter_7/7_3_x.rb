# ruby Chapter_7/7_3_x.rb



class User
  def initialize(name)
    @name = name
  end

  def hallo
    puts "hello,i am #{@name}"
  end
  
  def hello_v2
    shuffle_name = @name.chars.shuffle.join
    puts "hello,i am #{shuffle_name}"
  end
end

user = User.new('Alice')
user.hallo
user.hello_v2


