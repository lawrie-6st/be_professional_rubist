# ruby Chapter_2/2_8_x_playground.rb

#2.8.2％記法で文字列を作る。
# %q! !はシングルクォートと同じになる。
p %q!i am ninja!
# %Q! !はダブルクォートと同じになる。
word = 'ninja'
p %Q!i am #{word}!
# %! !もダブルクォートと同じになる。
p %!i am #{word}!

# ?を区切り文字として使う
p %q?i am ninja?

# {}を区切り文字として使う
p %q{i am ninja}

# 2.8.3ヒアドキュメント
puts "line 1,
line2"

a= <<TEXT
これはヒアドキュメントやで。
複数行に渡って文字列を作成するのに便利やで。
TEXT
puts a

def some_method
a= <<TEXT
これはヒアドキュメントやで。
複数行に渡って文字列を作成するのに便利やで。
TEXT
  end
puts some_method

#textがそのままだと引数設定ができるようになる。
def alice1
  name = 'alice'
  a= <<TEXT
私は#{name}
TEXT
end
puts alice1

#textを’’で囲むと引数の入れ込みが無効になる。
def alice2
  name = 'alice'
  a= <<'TEXT'
私は#{name}
TEXT
end
puts alice2

#textを””で囲むと引数の入れ込みが有効になる。（もともと有効なので、明示的にするにはいいかも）
def alice3
  name = 'alice'
  a= <<"TEXT"
私は#{name}
TEXT
end
puts alice3


# ヒアドキュメントを直接引数として渡す。
a = 'ruby'
a.prepend(<<TEXT)
JAVA
PHP
TEXT
puts a

# ヒアドキュメントで作成された文字列に対して直接upcaseメソッドを呼び出す。
b = <<TEXT.upcase
HALLO,
goodbye,
TEXT
puts b



# 2.8.4フォーマットを指定して文字列を作成する。
puts sprintf('%0.3f',1.2)
puts '%0.3f'% 1.2

puts sprintf('%0.3f+%0.3f', 1.2,0.48)
puts '%0.3f+%0.3f' % [1.2 , 0.48]


# 2.8.5 文字列作成いろいろ
# 数値を文字列に変換する。
puts 123.to_s
# 配列を連結して一つの文字列にする。
puts [10,20,30].join
# ＊演算子を使って文字を繰り返す
puts 'hi!' * 10
# String.newを使って新しい文字列を作る。
puts String.new('hallo')

# unicodeのコードポイントから、文字列を作成する。
puts "\u3044\u3044\u3046"

# 2.8.6 文字と文字列の違いは無い。
# 1文字でも文字列
puts 'a'
# 2文字以上でも文字列
puts 'abc'
# 0文字でも文字列
puts ''
# 1文字だけの文字列
puts ?a



