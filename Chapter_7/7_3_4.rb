# ruby Chapter_7/7_3_4.rb

class User
  def initialize(name)
    @name = name
  end

  def self.create_users(names)
    names.map do |name|
      User.new(name)
    end
  end
end

def hallo
  "hallo i am #{@name}"
end

names = %w[alice bob rick]
users = User.create_users(names)
users.each do |user|
  puts user.hallo
end
