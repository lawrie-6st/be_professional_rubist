# ruby Chapter_5/5_6_x_hash_more.rb
currency = { japan: 'yen', us: 'doller', india: 'rupee' }
puts currency.keys
puts currency.values

currency_v2 = { 'japan' => 'yen', 'us' => 'doller', 'india' => 'rupee' }
puts currency_v2.keys
puts currency_v2.values

puts '**でハッシュを展開させる。'
# もし＊＊が無い場合は公文エラーになるので、注意。
h = { us: 'doller', india: 'rupee' }
puts japan: 'yen', **h

# もしくはmergeでもOK

puts a = { japan: 'yen' }.merge(h)


puts 'ハッシュを使った疑似キーワード引数'
def buy_hamberger_2(menu, options = {})
  puts options[:drink]
  puts options[:poteto]
  puts options
end

buy_hamberger_2('meat', drink: true, poteto: true)


puts '任意のキーワードを受け付ける**引数'
def buy_hamberger_3(menu, drink: true, poteto: true, **others)
  puts others
end
buy_hamberger_3('fish', {salad: true, source: true})

puts '5.6.5のメソッド呼び出し時の｛｝の省略'
#カッコの最後にハッシュが来る場合のみ、処理がエラーにならない。
buy_hamberger_2('meat', 'drink' => true, 'poteto' => true)


puts '5.6.7 ハッシュから配列へ、配列からハッシュへ'
currency_v3 = { 'japan' => 'yen', 'us' => 'doller', 'india' => 'rupee' }
puts currency_v3.to_a
puts currency_v3.to_h
# TODO:シンボルを文字列に戻す方法が無いので、探す必要がある。


puts '5.6.8　ハッシュの初期値を理解する。'
h = {}
puts h[:foo]
h = Hash.new('hallo')
# TODO:ここは知らなかった。
#もし、ハッシュの中身が何も無い場合はhalloが帰る。(何個新しいものを呼んでもhalloが帰る。)
puts h[:foo]
puts h[:baa]

#ハッシュのデフォルトをnilにしたく無い場合は思い出すこと。
