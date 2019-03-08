# ruby Chapter_2/2_11_x_playground.rb

# 2.11.1 デフォルト値つき引数？
def greeting(country)
  if country == 'japan'
    'こんにちわ'
  else
    'hello'
  end
end
#引数が少ないと動かない
greeting
#引数がちょうどだと動く
greeting('japan')
#引数が多いと動かない
greeting('USA','japan')

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
def greeting(country = "japan")
  if country == 'japan'
    'こんにちわ'
  else
    'hello'
  end
end
# 引数が少なくても動く
greeting
# 引数を入れても動く
greeting('us')

# デフォルト設定を混在させることも混在させないこともできる。
def default_args(a,b,c=0,d=0)
  puts "a=#{a},b=#{b},c=#{c},d=#{d}"
end
default_args(1 ,2)
default_args(1 ,2 ,3)
default_args(1 ,2 ,3 ,4)

# システム日時や、他のメソッドから引っ張ってきた値をデフォルトに指定する。
def foo(time = Time.new, massage = bar)
 puts "time:#{time},massage:#{massage}"
end
def bar
  'BAR'
end
# 2.11.2 ?で終わるメソッド
puts "".empty?
puts "abd".empty?

puts "watch".include?('as')
puts "watch".include?('at')

puts 1.odd?
puts 2.odd?

puts 1.even?
puts 2.even?

puts nil.nil?
puts "abc".nil?
puts 1.nil?

# ？の真偽値は自分でメソッドを作ることができる。
def multiple_three?(n)
  n%3 == 0
end
multiple_three?(4)
multiple_three?(5)
multiple_three?(6)


# 2.11.3 !で終わるメソッド
a= 'ruby'
# upcaseで他の変数に突っ込んだら、大文字に変換できるけど、a自体は変換しない
puts a.upcase
puts a

# upcase!で他の変数に突っ込んだら,a自体も変換される。
puts a.upcase!
puts a