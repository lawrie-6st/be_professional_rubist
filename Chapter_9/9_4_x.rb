# ruby Chapter_9/9_4_x.rb

user = [1, 2, 3]

user.each do|user|
  begin
    send_mail_to(user)
  rescue => e
    puts 'これらはバグレポートです。'
    puts e
    puts "#{e.class}:#{e.message}"
    puts e.backtrace
  end
end



puts '例外処理を詰め込みたい場合は、極力キャッチする対象クラスを絞り込むこと。'
# TODO:　p344 エラークラスを絞り込むのは、bugの特定をしやすくするため？
# TODO: p327 理由としては、想定していない動きを、プログラムをしているときに、微妙に動いていることがある。そういうものが時限爆弾式に、バグを埋め込むことになる。なので、予想できるバグとそれ以外を判別するために必要。
#


'9.4.4例外処理よりも条件分岐を使う。'
require 'date'

def convert_heisei_to_date(heisei_text)
  m = heisei_text.match(/平成(?<jp_year>\d+)年(?<month>\d+)月(?<day>\d+)日/)
  year = m[:jp_year].to_i + 1988
  month = m[:month].to_i
  day = m[:day].to_i

  if Date.valid_date?(year, month, day)
    Date.new(year, month, day)
  end
end

puts convert_heisei_to_date('平成28年12月31日')
# puts convert_heisei_to_date('平成28年99月99日')

