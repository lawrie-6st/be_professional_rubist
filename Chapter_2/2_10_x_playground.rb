# ruby Chapter_2/2_9_x_playground.rb

# 2.9.1 １０進数以外の整数リテラル
# ２進数
puts 0b11111111
# ８進数
puts 0377
# １６進数
puts 0xff


# 2.9.2 ビット演算
puts (~0b1010).to_s(2)
puts (0b1010 & 0b1100).to_s(2)
puts (0b1010 || 0b1100).to_s(2)
puts (0b1010 ^ 0b1100).to_s(2)
puts (0b1010 << 1).to_s(2)
puts (0b1010 >> 1).to_s(2)

# 2.9.3 指数表現
puts 2e-3
puts 10.class
puts 1.5.class


# 2.9.4 数値クラスあれこれ
# 有理数リテラルを使う
puts r= 2/3r
puts r
puts r.class
# 文字列から有理数に変換する
puts r= '2/3'.to_r
puts r
puts r.class
# 複素数リテラルを使う
puts c = 0.3 - 0.5i
puts c
puts c.class
# 文字列から副青数に変換する
puts c = '0.3 - 0.5i'.to_c
puts c
puts c.class

