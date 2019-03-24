# ruby Chapter_2/2_2_x_play_ground.rb
puts '2.2.1すべてがオブジェクト'
puts '1'.to_s
puts 1.to_s
puts nil.to_s
puts true.to_s
puts false.to_s
puts /\d+/.to_s

puts 'リテラルとは、ソースコードに直接埋め込むことができる値'
123
"hello"
[1,2,3]
{'japan'=> 'yen','us' => 'dollor','india'=> 'rupee'}

puts 'メソッドの呼び出し'
a,b,c = 10,20,30
p a
p b
p c

d= [a,b,c]
p d