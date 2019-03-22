# ruby Chapter_9/9_1_x.rb
puts '9.2.5'
begin
  'abc'.doo
rescue ZeroDivisionError
  puts "0で除算しました。"
rescue NoMethodError
  puts "メソッドがありません。"
rescue StandardError
  puts "そのたのエラーです。"
end


puts '9.2.8'
retry_count = 0
begin
  puts '処理を開始する。'
rescue
  retry_count += 1
  if retry_count <= 3
    puts 'retryします。'
    retry
  else
    puts 'retryに失敗しました。'
  end
end


