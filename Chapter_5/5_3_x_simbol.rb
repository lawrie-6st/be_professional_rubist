# ruby Chapter_5/5_3_x_simbol.rb

puts '5.3.1 シンボルトと文字列の違い'
puts :apple.class
puts 'apple'.class
# 文字列よりもシンボルの方がはやく動作できる。
# なぜならば、オブジェクトidが文字列よりも短いから。

puts '5.3.2シンボルの特徴と主な用途。'
currency = { japan: 'yen', us: 'doller', india: 'rupee' }
puts currency[:japan]

# もし追加したい場合派、
currency[:italy] = 'euro'
puts currency

puts '5.4.2キーや値に異なるデータ型を混在させる。'
# ハッシュは文字列とシンボルを混ぜることができますが、基本的には混ぜない方が懸命。
hash = { 'abc' => 123, def: 456 }
puts hash['abc']

puts '5.4.3メソッドのキーワード引数とハッシュ'
def buy_humberger(menu, drink: true, poteto: true)
  puts "#{menu}happy_set" if drink && poteto
end
buy_humberger('fish', drink: true, poteto: true)
buy_humberger('fish', drink: false, poteto: false)

