# ruby brushupknowledge/20190818.rb


a = 1
b = a.dup
b.freeze

puts kiriage = 1.9
puts kirisage = 1.1

puts "ceil" # 天井という意味らしいだから、切り上げ
puts kiriage.ceil
puts kirisage.ceil

puts "floor" # 床という意味だから、全部切り捨て
puts kiriage.floor
puts kirisage.floor

puts "round" #意味は丸める、普通の四捨五入
puts kiriage.round
puts kirisage.round

puts "truncate" # ゼロを中心として一番出っ張っているところを切る。
puts kiriage.truncate
puts kirisage.truncate

puts "ads" # absoluteの略字らしい。　絶対値という意味。ｓ
puts kiriage.abs
puts kirisage.abs


puts "stepの練習"
puts "開始する数.step(どこまで数えるか,数を増やす単位)"
1.step(100,2){|i|puts i}
1.step(100,10){|i|puts i}


