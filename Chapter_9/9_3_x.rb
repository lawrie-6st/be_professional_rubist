# ruby Chapter_9/9_3_x.rb

puts '9.3意図的に例外を発生させる。'
def currency_of(country)
  case country
    when :japan
      puts 'yen'
    when :us
      puts 'dollor'
    when :india
      puts 'rupee'
    else
    raise "無効な国名です。#{country}"
  end
end

currency_of(:japan)
currency_of(:us)
currency_of(:india)
currency_of(:brazil)