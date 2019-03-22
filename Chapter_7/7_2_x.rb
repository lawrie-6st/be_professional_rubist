# ruby Chapter_7/7_2_x.rb

puts '7.2.1クラスを使う場合と使わない場合の比較'

# クラスを使う場合

class User
  attr_reader :first_name, :last_name, :age

  def initialize(first_name, last_name, age)
    @first_name = first_name
    @last_name = last_name
    @age = age
  end

  def full_name(user)
    "#{user.first_name} #{user.last_name}"
  end
end

users = Array.new
users << User.new('Alice', 'Ruby', 20)
users << User.new('Bob', 'Python', 30)

users.each do |user|
  puts "氏名: #{full_name(user)}, 年齢: #{user.age}"
end

