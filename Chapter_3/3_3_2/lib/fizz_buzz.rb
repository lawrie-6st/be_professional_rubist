def fizz_buzz(number)
  if (number % 15).to_f == 0
    'fizz_buzz'
  elsif (number % 3).to_f == 0
    'fizz'
  elsif (number % 5).to_f == 0
    'buzz'
  else
    number.to_s
  end
end
