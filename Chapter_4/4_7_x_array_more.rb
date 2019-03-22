# ruby Chapter_4/4_7_x_array_more.rb
#4.7.1 杯入れる[位置、取得する長さ]
a = [*1..5]
puts a[1, 3]
# value_at を使うと添字を複数取得できる。
puts a.values_at(0, 2, 4)

#最後の要素を取得できる。
puts a[a.size - 1]


#添字はマイナスで指定することもできる。
puts a[-1]
puts a[-2]
puts a[-3]
# last メソッドを使っても同様のことができる。
a.last
a.last(2)
#　もちろんfirstメソッドもある。
a.first
a.first(2)


#4.7.2 配列の要素の変更。
a = [*1..5]
a[-3] = 100
puts a
#もちろん範囲指定で入れ替えることも可能。
a = [*1..5]
a[-2, 2] = 100
puts a


# pushを使って、突っ込むこともできる。
a = [*1..5]
puts a.push(1)
puts a.push(2, 3)

# deleteを使うと要素を消すこともできる。
a = [*1..5]
puts a.delete(2)
# 範囲の指定を間違えるとnilが帰る。
puts a.delete(6)

# 4.7.2配列の連結
a = [1]
b = [2, 3]
a.concat(b)
# aは変更ｓ荒れるけど、ｂはそのまま残る。
puts "aは#{a}"
puts "bは#{b}"

# もし、足したい場合は+で足して上げるだけ。
a = [1]
b = [2, 3]
puts a + b

#4.7.4 配列の和集合、差集合、積集合
a = [1, 2, 3]
b = [3, 4, 5]
# 和集合
puts "和集合は#{a | b}"
# 差集合
puts "差集合は#{a - b}"
# 積集合
puts "積集合は#{a & b}"

#4.7.5 多重代入であまりを受け取る。
e, *f = 100, 200, 300
puts "eは#{e}"
puts "fは#{f}"

# 4.7.6 １つの配列の複数の引数として展開する。
def greeting(*names)
  puts "#{names.join('と')}、こんにちわ。"
end
greeting('田中さん', 'すずきさん')
greeting('田中さん', 'すずきさん', 'さとうさん')

# 4.7.9 ==で等しい配列化どうかを判断する。
puts [1, 2, 3] == [1, 2, 3]
puts [1, 2, 3] == [1, 2, 4]

# 4.7.10 %記法で文字列の配列を完結に作る。
#通常版
puts ['apple', 'banana', 'melon']
#特殊版
puts %w[apple banana melon]

#4.7.11文字列を配列に変換する。
puts 'ruby'.chars
puts 'ruby,java,perl,go,something'.split(',')

# 4.7.11配列に初期値を設定する。
# これで配列の入れ物を作れる。
a = Array.new
# 配列の中の箱をいくつか作ることがでkリウ・
a = Array.new(5)
puts a
# 初期値を0で作ることができる。
a = Array.new(5,0)
puts a
#要素が１０で1,2,3の繰り返しを挿入する。
a = Array.new(10) { |n| n % 3 + 1 }
puts a