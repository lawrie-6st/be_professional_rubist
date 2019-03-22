# ruby Chapter_5/5_2_x_hash.rb

puts '5.2ハッシュ'
puts {}.class
puts 'japan' => 'yen', 'us' => 'doller', 'india' => 'rupee'

puts '5.2.1要素の追加変更取得'
currency = {'japan' => 'yen', 'us' => 'doller', 'india' => 'rupee'}
currency['italy'] = 'euro'
puts currency

#ハッシュの特徴はキーが大量に格納されている場合でも、指定したキーに対する。値を高速に取り出せるのが特徴です。
# また存在しないキーを指定するトnilが返ります。

puts '5.2.2ハッシュを使った繰り返し例'
currency = {'japan' => 'yen', 'us' => 'doller', 'india' => 'rupee'}
currency.each do |key,value|
  puts "#{key}:#{value}"
end

#ブロック引数を１つに格納するト値が配列に格納されます。
currency = {'japan' => 'yen', 'us' => 'doller', 'india' => 'rupee'}
currency.each do |key_value|
  key = key_value[0]
  value = key_value[0]
  puts "#{key}:#{value}"
end

puts '5.2.3　ハッシュの同値比較、要素数の取得、要素の排除'
a = {'x'=>1,'y'=>2,'z'=>3}
b = {'x'=>1,'y'=>2,'z'=>3}
c = {'y'=>2,'z'=>3,'x'=>1}
d = {'y'=>10,'z'=>3,'x'=>1}
#中身の要素が一緒なら、true
puts a == b
#中身の順番が変わったとしてもtrue
puts a == c
#中身のどれかが違うとアウト。
puts a == d
# サイズは３（要素の数だけ出力する。）
puts a.size
# デリートしたい場合派キーで検索する。
puts a.delete('japan')

