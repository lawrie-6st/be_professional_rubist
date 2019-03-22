# ruby Chapter_4/4_4_x_block_and_array.rb

# 4.4.1mapandarray
numbers = [1, 2, 3, 4, 5]
new_numbers = []
numbers.each do |n|
  new_numbers << n * 10
end
puts new_numbers

# mapメソッドは与えられた値すべてに対して評価を返すメソッド（要はすごく便利）
numbers = [1, 2, 3, 4, 5]
new_numbers = numbers.map { |n| n * 10 }
puts new_numbers

# 4.4.2 select and find
# select は評価がtrueの場合のみ、数値を返す。
numbers = [1, 2, 3, 4, 5]
even_numbers = numbers.select(&:even?)
puts even_numbers

# selectの反対で、評価がfalseの場合はrejectを使うこと。
numbers = [1, 2, 3, 4, 5]
not_even_numbers = numbers.reject(&:even?)
puts not_even_numbers

# find/detect ブロックで評価がtrueだった数値の一番最初飲みを返す。
numbers = [1, 2, 3, 4, 5]
even_numbers = numbers.find(&:even?)
puts even_numbers

# 4.4.4 injest reduce
# each文とほぼ機能は変わらないが、numbersの数だけ、右辺の式がresultに反映されていく。
# 正直あまり使いたくない（暗号化とかに使えそうだけど、滅多なことでは使用しなさそう。？）
numbers = [1, 2, 3, 4]
even_numbers = numbers.inject(0) { |result, n| result + n }
puts even_numbers

# 4.4.5&　と　シンボルを使ってもっと完結にかく。
# 以下の２コードは一緒。
# 次の条件が揃ったときにだけ使用することができる。
# ①ブロック引数が一つだけの時
# ②ブロックの中で呼び出す引数がない
# ③ブロックの中では、ブロック引数に対してメソッドを①回呼び出す以外の処理がない。
['ruby', 'perl', 'java'].map { |s| s.upcase }
['ruby', 'perl', 'java'].map(&:upcase)

