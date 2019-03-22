# ruby Chapter_4/4_2_x_array.rb
puts [].class
# アレイは数値を入れることができる。
puts [1, 2, 3]
# アレイは改行して組むこともできる。
puts [1,
      2,
      3]
# アレイは文字列を突っ込むこともできる。
puts ['apple' 'orange' 'melon']
#　アレイは入れる値の内容を混在させてもOK！
puts a = [1, 'apple', 2, 'orange', 3, 'melon']

# アレイはアレイに入れ子できる。
puts a = [[1][2]]

# もし要素を取り出したい時は、添字を入れることで内容を取り出すことができる。
a = [1, 2, 3]
puts a[0]
# 存在しない要素を取り出そうとするとnilが返ります。
puts a[100]

# アレイの内容物の数を取得したい場合は、sizeやlengthで調べることができる。
puts a.length
puts a.size

# 4.2.1要素の追加、削除、変更
a = [1, 2, 3]
a[1] = 20
puts a

#<<を使うと要素を突っ込むことができる。
a = []
a << 1
a << 2
a << 3
puts a

#要素を削除したいときは、delete_at
puts a.delete_at(1)
# 要素が無いところを削除するとnilが帰る。
puts a.delete_at(100)

# 4.2.2配列を使った多重代入
puts a, b = 1, 2

# 代入する値が少ない場合は、nilが入る。
c, d = [10]
puts c
puts d

# 右辺の数が多い場合ははみ出た値が切り捨てられる。
e, f = [100, 200, 300]
puts e
puts f
# divmodは商と余りを配列で返す
puts 14.divmod(3)
# 戻り値を配列のまま受け取る
quo_rem = 14.divmod(3)
puts "商=#{quo_rem[0]},余り=#{quo_rem[1]}"

# 多重代入で別々の変数で受け取る
quo_rem = 14.divmod(3)
puts "商=#{quo_rem[0]},余り=#{quo_rem[1]}"