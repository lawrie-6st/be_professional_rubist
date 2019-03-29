# ruby brushupknowledge/20190327.rb


puts 'ミュータブルとイミュータブルの違い'
puts 'ミュータブルとは；破壊的な変更を行うことができるオブジェクトのこと。'
puts '以下例'
puts 'apple'.class
string_word = 'apple'
string_word.upcase! #ここで文字列が大文字に変更され、破壊的な操作が行われる。
puts string_word
puts 'appleは破壊されました。'
puts ''

puts 'イミュータブルとは：破壊的な変更を行うことができないオブジェクトのこと。'
puts '以下例'
puts :apple.class
symbol_word = :apple
# symbol_word.upcase! #ここでシンボルは大文字に変更できないので、nomethoderrorが表示される。
puts symbol_word
puts ':apple。は破壊できない。'


upcase!

puts ブロック

puts 'enumerableモジュールとは'
puts 'enumerableモジュールとは、配列や、ハッシュ、範囲、など何かしらの繰り返し処理ができるクラスにincludeされているモジュール'
puts 'https://docs.ruby-lang.org/ja/latest/class/Enumerable.html'

