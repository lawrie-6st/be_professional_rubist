# ruby Chapter_4/4_8_x_block_more.rb

# 4.8.1　添字月の繰り返し処理
fruits = ['apple', 'orange', 'melon']
fruits.each_with_index { |fruits, i| puts "#{i}:#{fruits}" }

#4.8.2 with_indexメソッドを使った添字付きの繰り返し処理。
# mapとして処理しつつ、添字も受け取る。
fruits = ['apple', 'orange', 'melon']
fruits.map.with_index { |fruits, i| puts "#{i}:#{fruits}" }

# 名前に”a”を含み、なおかつ添字が奇数である要素を削除する。
fruits = ['apple', 'orange', 'melon']
fruits.delete_if.with_index { |fruits, i| puts fruits.include?('a') && i.odd? }

puts 'ブロックなしでメソッドを呼ぶとemumeratorオブジェクトが帰る。よってwith_indexメソッドを呼び出すことができる。'
fruits = ['apple', 'orange', 'melon']
puts fruits.each
puts fruits.map
puts fruits.delete_if

puts '4.8.3添字を０以外のb数値から開始させる。'
fruits = ['apple', 'orange', 'melon']
fruits.each.with_index(1) { |fruit, i| puts "#{i}: #{fruit}" }

fruits.each.with_index(10) { |fruit, i| puts "#{i}: #{fruit}" }


puts '4.8.4配列がブロック引数に渡される場合'
demension = [
    [10, 20],
    [30, 40],
    [50, 60]
]
area = []

puts 'ブロック引数が１つの場合'
demension.each do |d|
  length = d[0]
  width = d[1]
  area << length * width
end
puts area

puts 'ブロック引数が２つの場合'
demension.each do |l, w|
  area << l * w
end
puts area

puts 'ブロック引数が多すぎる場合は、余った引数がnilになる。'
demension.each do |length, width, foo, bar|
  p [length, width, foo, bar]
end

puts 'ブロック引数が少ない場合は、最後の値が捨てられる。'
demension = [
    [10, 20, 100],
    [30, 40, 200],
    [50, 60, 300]
]
area = []
demension.each do |l, w|
  area << l * w
end
puts area

puts 'もとからブロック引数が２つ受け取る場合は、'
demension = [
    [10, 20],
    [30, 40],
    [50, 60]
]

puts 'ブロック引数にカッコを付けることで、配列の中身を取り出すことができる。'
demension.each_with_index do |(length, width), i|
  puts "length: #{length},width:#{width},i#{i}"
end

puts '4.8.5ブロックローカル変数'
puts 'ブロック引数を;で区切り、続けて変数を宣言すると、ブロック内でのみ有効な独立したローカル変数を宣言することができます。'
numbers = [*1..4]
sum = 0
numbers.each do |n; sum|
  sum = 10
  sum += n
  p sum
end

puts '4.8.6　繰り返し処理以外でも使用されるブロック'
File.open('./sample.txt', 'w') do |file|
  file.puts('１行目のテキストです。')
  file.puts('２行目のテキストです。')
  file.puts('３行目のテキストです。')
end

puts '4.8.7　do..endと{}の結合度の違い'
a = [1, 2, 3]

puts 'ブロックを渡さないときは指定した値が見つからないとnilが帰る'
a.delete(100)

puts 'ブロックを渡すとブロックの戻り値が指定した値が見つからないときの戻り値になる。'
a.delete(100) do
  puts 'NG'
end

