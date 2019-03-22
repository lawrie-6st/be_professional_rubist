# ruby Chapter_6/6_2_x.rb


#　正規表現とは
puts a = <<TEXT
正規表現とは、「パターンを指定して、文字列を効率よく検索・置換するためのミニ言語」
TEXT

puts '6.2.1 正規表現の便利さを知る。'
text = <<TEXT
I love Ruby
Python is a great language
Java and JavaScript are diffrent
TEXT
puts text.scan(/[A-Z][A-Za-z]+/)

