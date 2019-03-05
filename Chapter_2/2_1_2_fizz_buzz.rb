# fizz_buzz

# 3で割り切れる数であれば　fizz
# 5で割り切れる数であれば_buzz
# 15で割り切れる数であれば fizz_buzz
# ruby Chapter_2/2_1_2_fizz_buzz.rb
number = 30
if (number % 3).to_f == 0 && (number % 5).to_f == 0
  print 'fizz_buzz'
else
  print 'fizz' if (number % 3).to_f == 0
  print 'buzz' if (number % 5).to_f == 0
end

