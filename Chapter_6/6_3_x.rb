# ruby Chapter_6/6_3_x.rb
regex = /\d{3}-\d{4}/
puts regex.class
if '123-4567' =~ regex
  puts 'matched'
else
  puts 'different'
end

# TODO: regexクラスの比較は、他と違い、0かnilしか帰らない。
# なので、=~であえて、true or false に変換して上げる必要がある


text = '私の誕生日は1993年7月13日です。'
regex_2 = /(\d+)年(\d+)月(\d+)日/
m  = regex_2.match(text)
puts m[0]
puts m[1]
puts m[2]
puts m[3]

puts '6.3.3 キャプチャ結果に名前をつける。'

text = '私の誕生日は1993年7月13日です。'
regex_2 = /(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/
m  = regex_2.match(text)
puts m[:year]
puts m[:month]
puts m[:day]

# これをしたときも連番で取ることもできる。
puts m[2]

text = '私の誕生日は1993年7月13日です。'
if /(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/ =~ text
  puts "#{year}/#{month}/#{day}"
end

puts '6.3.4 正規表現と組み合わせると便利なStringクラスメソッド'
#scan
puts '123 456 789'.scan(/\d+/)

#slice
text = '郵便番号は123-4567'
puts text[/\d{3}-\d{4}/]
puts text
# slice!は破壊的なメソッド。
puts text.slice!(/\d{3}-\d{4}/)
puts text


# split
text = '123,456-789'
puts text.split(',')
puts text.split(/,|-/)
