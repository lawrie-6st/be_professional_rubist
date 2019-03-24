# ruby Chapter_10/10_2_x.rb

def greeting_v2
  puts 'おはよう'
  text = yield 'こんにちわ'
  puts text
  puts 'こんばんわ'
end

puts 'yield はメソッドの中に処理を入れて動作をさせることができる句'

greeting_v2 do |text|
  text * 2
end

def greeting_v3(&block)
  puts 'おはよう'
  unless block.nil?
    text = yield('こんにちわ')
    puts text
  end
  puts 'こんばんわ'
end

puts '~~~~~~~~~~~~~~~~~~~~ブロックなしで、呼び出す。'
greeting_v3
puts '~~~~~~~~~~~~~~~~~~~~ブロック付きで、呼び出す。'
greeting_v3 do |text|
  text * 2
end



#〜〜〜〜〜〜〜〜〜〜〜〜〜〜〜〜〜〜〜〜〜〜〜〜〜〜〜〜〜〜〜〜〜〜〜〜〜〜〜〜〜〜〜〜〜〜〜〜〜〜〜〜〜〜〜〜〜〜〜〜〜〜〜〜〜〜〜〜〜〜〜

def greeting_ja(&block)
  texts = ['おはよう','こんにちわ','こんばんわ']
  greeting_common(texts,&block)
end

def greeting_en(&block)
  texts = ['good morning','hello','good evening']
  greeting_common(texts,&block)
end

def greeting_common(text, &block)
  puts text[0]
  puts block.call(text[1])
  puts text[2]
end

greeting_ja do |text|
  text * 2
end

greeting_en do |text|
  text.upcase
end




