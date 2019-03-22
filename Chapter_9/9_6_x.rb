# ruby Chapter_9/9_6_x.rb

file = File.open('sample.txt','w')
begin
  file << 'Hello'
ensure
  puts 'ensureは成功しようが失敗しようが必ず、通る'
  file.close
end

puts '9.6.2 ブロックを使うと以下のようになる。これはブロックをぬけると自動で、ファイルが消える。'
File.open('sample.txt', 'w') do |file|
  file << 'Hello'
end



puts '9.6.3 例外処理のelse'

begin
  puts '例外が発生するかもしれない処理'
rescue
  puts '例外が発生した場合の処理'
else
  puts '例外が発生しなかった場合の処理'
ensure
  puts '例外の有無に関わらず、通る処理。'
end


puts '9.7.4　処理　の例外の戻り値'
ret =
    begin
      'OK'
    rescue
      'error'
    ensure
      'ensure'
    end
puts ret