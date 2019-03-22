# ruby Chapter_4/4_3_x_block.rb

number = [1, 2, 3, 4]
sum = 0
number.each do |n|
  puts sum += n
end

# deleteはかっこで指定した値を探し、削除する。（複数ある場合はすべて削除する。
a = [1, 2, 3, 1, 2, 3]
puts a.delete(2)

# 奇数のみ削除したい場合はdelete_if を仕様する。
a = [1, 2, 3, 1, 2, 3]
a.delete_if(&:odd?)
puts a


# 4.3.4_Block_argument_and_Block_variant

numbers = [1..4]
# sumはブロックの外で宣言されているので、ブロックの外でも使うことができる変数だ。
sum = 0
numbers.each do |n|
# sum_value ブロックの中で登場した変数なので、ブロック内でしか生きられない。（このコトをシャドーイングという）
  sum_value = n.even? ? n * 10 : n
  puts sum += sum_value
end
