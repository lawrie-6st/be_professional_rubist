# frozen_string_literal: true

# ruby brushupknowledge/20190330.rb

# 今日勉強したこと。
# エンコーディングが違う同士で、文字列を足すことはできない。
# rubyのクラス図は以下の用になっている。
# integer> numeric>object>basic object
# 文字列を比較するときに、Barとbarでは大文字の方が小さくなる。理由としては、大文字の方が文字バイト列状で早いから。
#
# equal? eql? ==　それぞれの違い
# == は同じ数値であれば、trueになる。オブジェクトのクラス関係なく、評価してくれる。（1 = 1.0）であるとか
# eql?はオブジェクトクラスが同一で有ることを確認している==と違って厳し目。
# equal?はオブジェクトクラス、値、オブジェクトIDも見ているので、すごく厳しい。
#
# 正規表現 正規表現で抜き出した文字は、$1とか[$+数字]で抜き出すことができる。
#
# %r|(http://www(\.)(.*)/)|=~"http://www.xyz.org/"
# puts $1

puts String.ancestors
dir_name = 'しけん'
dir_class = Dir

dir_class.methods
puts dir_class.pwd
puts dir_class.mkdir(dir_name)
puts dir_class.glob(dir_name)
puts dir_class.rmdir(dir_name)

result = dir_class.glob(dir_name)
if result.empty?
  puts 'フォルダはありません'
else
  puts result
end


puts io = open('sample.txt')
puts BasicObject.methods

git
