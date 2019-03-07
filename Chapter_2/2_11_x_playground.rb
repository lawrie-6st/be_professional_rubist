# ruby Chapter_2/2_10_x_playground.rb

# 2.10.1 &&や||の戻り値と評価を終了するタイミング
puts 1 && 2 && 3
puts 1 && nil && 3
puts 1 && false && 3
puts nil || false
puts false || nil
puts nil || false || 2 || 3
# 2.10.2 優先順位が低いand or not
puts t1 = true
puts f1 = false
puts !t1 || f1
puts (not f1 || t1)

# !は｜｜よりも優先順位が高い
puts !(f1)||t1
# notは｜｜よりも優先順位が低い
puts not(f1||t1)

# 2.10.3 unless文
# 例文１
status = 'error'
if status != 'OK'
  puts 'なにか異常があります。'
end
# 例文２（１と結果は一緒）
status = 'error'
unless status == 'OK'
  puts 'なにか異常があります。'
end
# 例文３（else文を追加）
status = 'error'
unless status == 'OK'
  puts 'なにか異常があります。'
else
  puts '正常です。'
end

# 2.10.4 case文
# 学習済
# 2.10.5 条件演算子（三項演算子）
n = 11
if n > 10
  p '10より大きい'
else
  p '10以下'
end
# 以上のコードを条件演算子を使うと次のように書き直すことができる。
n = 11
puts n > 10 ? '10より大きい' : '10以下'

massage =  n > 10 ? '10より大きい' : '10以下'
puts massage