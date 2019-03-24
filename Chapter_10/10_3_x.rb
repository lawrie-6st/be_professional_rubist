# ruby Chapter_10/10_3_x.rb

puts'procおぶじぇくと'
hello_proc = Proc.new do
  puts 'hello'
end

hello_proc_v2 = Proc.new { puts 'hello' }
hello_proc.call
hello_proc_v2.call


add_proc = Proc.new { |a, b| a + b }
puts add_proc.call(10 , 20)

puts "procオブジェクトの代わりにブロックを渡す"
def greeting(&block)
  puts 'おはよう'
  text = block.call('こんにちわ')
  puts text
  puts 'こんばんわ'
end

puts 'procオブジェクトを書く。'
repeat_proc = Proc.new { |text| text * 2 }
greeting(&repeat_proc)


puts '10.3.3 block Procオブジェクトを普通の引数として渡す'
def greeting_v2(arrange_proc)
  puts 'おはよう'
  text = arrange_proc.call('こんにちわ')
  puts text
  puts 'こんばんわ'
end

repeat_proc = Proc.new { |text| text * 2 }
greeting_v2(repeat_proc)


add_proc = Proc.new{|a,b|a+b}
puts add_proc.class
puts add_proc.lambda?

add_lambda = -> (a,b){a+b}
puts add_lambda.class
puts add_lambda.lambda?
