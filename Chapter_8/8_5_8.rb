# ruby Chapter_8/8_5_8.rb
module NameChanger
  def change_name
    self.name = 'ありす'
  end
end

class User
  include NameChanger
  attr_accessor :name
  def initialize(name)
    @name = name
  end
end

user = User.new('alise')
puts user.name

user.change_name
puts user.name