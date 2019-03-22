# ruby Chapter_4/4_5_x_range.rb
# rangeとは以下のようなもｍのを刺す。
# ..は5も含まれる。
puts 1..5
# ...は5は含まれない。
puts 1...5
puts 'a'..'e'
puts 'a'...'e'

# 範囲オブジェクトはrangeオブジェクト
puts (1..5).class

# もし、rangeの中に特定のものが入っているか調べたい場合はinclude?を仕様すること。
# # ..は5も含まれる。
range = 1..5
puts range.include?(1)
puts range.include?(4.9)
puts range.include?(5)
puts range.include?(6)
# ...は5は含まれない。
range = 1...5
puts range.include?(1)
puts range.include?(4.9)
puts range.include?(5)
puts range.include?(6)

#かっこで囲まないとメソッドエラーになってしまう。
# エラーの例：1..5.include?(1)
puts (1..5).include?(1)

#4.5.1　配列や文字列の一部を抜き出す
a = [1, 2, 3, 4, 5]
puts a[1..3]
a = 'abcdef'
puts a[1..3]

# 3.5.2　範囲判定
#これまでのやり方
def liquid?(temprature)
  0 <= temprature && temprature < 100
end
puts liquid?(-1)
puts liquid?(0)
puts liquid?(99)
puts liquid?(100)
# 範囲オブジェクトを使う場合。
def liquid_v2?(templature)
  (0...100).include?(templature)
end

puts liquid_v2?(-1)
puts liquid_v2?(0)
puts liquid_v2?(99)
puts liquid_v2?(100)


# 4.5.3 case文で使う。
def charge(age)
  case age
  when 0..5
    0
  when 6..12
    300
  when 13..18
    600
  else
    1000
  end
end
puts charge(3)
puts charge(12)
puts charge(16)
puts charge(25)


# 4.5.4値が連続する配列を作成する。
puts (1..5).to_a
puts (1...5).to_a
puts ('a'..'e').to_a
puts ('a'...'e').to_a
puts ('bad'..'bag').to_a
puts ('bad'...'bag').to_a

#[]の中に*をつけるだけで、作ることもできる。
puts [*1..5]
puts [*1...5]

#4.5.5繰り返し処理を行う
# 例文（いままでのやり方）
numbers = (1..4).to_a
sum = 0
numbers.each { |n| sum += n }
puts sum
#超短縮版
sum = 0
(1..4).each { |n| sum += n }
puts sum
#stepメソッドを使うと特定の順番ごとにスキップできる。
numbers = []
(1..10).step(2) { |n| numbers << n }
puts numbers