# ruby Chapter_7/7_5_2.rb

class Foo
  puts "このクラス公文直下のself: #{self}"
  
  def self.bar
    puts "このクラスメソッド内のself:#{self}"
  end
  
  def baz
    puts "インスタンスメソッド内のself:#{self}"
  end
end

Foo.bar

foo = Foo.new
foo.baz
