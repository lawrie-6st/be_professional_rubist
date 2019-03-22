# ruby Chapter_4/4_9_x_repetition_more.rb
puts '4.9.1_timesメソッド'
sum = 0
5.times { |n| sum += n }
puts sum

puts 'sumに１を加算させることもできる。'
sum = 0
5.times { sum += 1 }
puts sum

puts '4.9.2 upto and down to メソッド'
# カッコの中の数値を１つずつ上げる。
a = []
10.upto(14) { |n| a << n }
puts a

# カッコの中の数値を１つずつ下げる。
a = []
10.downto(14) { |n| a << n }
puts a

puts '4.9.3 step　メソッド'
# 開始値.step(上限値、１度に増減する大きさ)
a = []
1.step(10, 2) { |n| a << n }
puts a
# マイナスにすることもできる。
a = []
10.step(1, -2) { |n| a << n }
puts a

puts '4.9.4while文とuntil文'
# 省略しない方法
a = []
a << 1 while a.size < 5
puts a

# 省略する方法
a << 1 while a.size < 5
puts a

# どんな条件でも１度派実行させたい場合
a = []
a << 1 while false
begin
  a << 1
end while false
puts a

# until文
# 後ろから配列の数が３つになるまで、削除する。
a = [10, 20, 30, 40, 50]
a.delete_at(-1) until a.size <= 3
puts a

puts '4.9.5 for文'
# for 変数　in 配列やハッシュ
# 繰り返し処理
# end

# 基本形
numbers = [*1..4]
sum = 0
numbers.each do |n|
  sum += n
end
puts sum

# 省略形
numbers = [*1..4]
sum = 0
numbers.each { |n| sum += n }
puts sum

# ~~~~~重要~~~~~~~~~~~~
# rubyではforよりもeach文や、mapをメインに使用する。
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

puts '4.9.6 loopメソッド'
numbers = [*1..5]
loop do
  n = numbers.sample
  puts n
  break if n == 5
end

puts '4.10.1 break'
# ５が出たら繰り返しを抜ける
numbers = [*1..5].shuffle
numbers.each do |n|
  puts n
  break if n == 5
end
# breakで出ることができるのは一番内側のものだけ（複数ブロックはまたげない）
fruits = %w[apple melon orange]
numbers = [*1..3]
fruits.each do |fruit|
  numbers.shuffle.each do |n|
    puts "#{fruit},#{numbers}"
    break if n == 3
  end
end

puts '4.10.2throwとcatchを使った大域脱出'
fruits = %w[apple melon orange]
numbers = [*1..3]
catch :done do
  fruits.each do |fruit|
    numbers.shuffle.each do |n|
      puts "#{fruit},#{numbers}"
      throw :done if fruit == 'orange' && n == 3
    end
  end
end


puts '4.10.3breakとreturnの違い'
# リターンは挙動がメソッド自体の脱出なので、繰り返し処理の途中に抜けるなどしたときに、はnilで次のメソッドに戻ってしまう。
# でも、基本的には、breakやreturnは使用しない方が良いとのこと。（みやすさのために。）

puts '4.10.4next'
numbers = [*1..5]
numbers.each do |n|
  next if n.even?
  puts n
end

puts '4.10.5redo'
#redoは繰り返しをやり直させる場合に使用する。
# 場合によっては無限ループに入ってしまうので、やり直しの回数を決めることで対処すること。
# 個人メモ：用途がいまいちよくわからない。

foods = ['ピーマン', 'トマト', 'セロリ']
count = 0
foods.each do |food|
  p "#{food}はすきですか？=>"
  answer ="いいえ"
  puts answer

  count += 1
  redo if answer !='はい' && count < 2
  count = 0
end