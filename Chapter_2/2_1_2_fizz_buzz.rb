# ruby Chapter_2/2_1_2_fizz_buzz.rb

# 3で割り切れる数であれば　fizz
# 5で割り切れる数であれば_buzz
# 15で割り切れる数であれば fizz_buzz
# ruby Chapter_2/2_1_2_fizz_buzz.rb
def fizz_buzz(number)
  if (number % 15).to_f == 0
    p 'fizz_buzz'
  elsif (number % 3).to_f == 0
    p 'fizz'
  elsif (number % 5).to_f == 0
    p 'buzz'
  else
    p number.to_s
  end
end

n = 0
30.times do
  n += 1
  p "nが#{n}の時に結果は！"
  fizz_buzz(n)
end