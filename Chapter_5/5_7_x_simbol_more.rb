# ruby Chapter_5/5_7_x_simbol_more.rb

# シンボルは以下の条件だと、エラーになる。
# ・数字だけ
# ・ハイフン
# ・（）だけ
# ・空欄だけ
# でもカッコでかこむとかける。
puts :'12234'
name = 'alice'
puts :"#{name.upcase}"

#’文字列:値’の形式で書くと、キーがシンボルになる。
puts hash = {'abc': 123}


#!を区切り文字で使う。
#puts %s!ruby is fun!
#puts %s(ruby is fun)

#%iでシンボルになる。
puts %i[hallo\goodbye, :#{name.upcase}]
puts %I[hallo\goodbye, :#{name.upcase}]

puts '5.7.3シンボルト文字列の関係'
#シンボルと文字列派、別物なので互換性は無い。
# なので、それぞれ比べたりしたい場合は、必ず、変換してあげる必要がある。
#