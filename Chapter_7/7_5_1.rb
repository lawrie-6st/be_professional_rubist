# ruby Chapter_7/7_5_1.rb
class User
  attr_accessor :name
  def initialize(name)
    @name = name
  end
  
  def rename_to_bob
    # selfを付けずにbobを呼ぶ
    name = 'BOb'
  end
  
  def rename_to_carol
    self.name = 'carol'
  end
  
  def rename_to_dave
    @name = 'dave'
  end
end



user = User.new('alice')

user.rename_to_bob
puts user.name
user.rename_to_carol
puts user.name
user.rename_to_dave
puts user.name