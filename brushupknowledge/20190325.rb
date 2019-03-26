# ruby brushupknowledge/20190325.rb
puts 'reprise chapter 2'

name = 'alice'
puts 'hello,'+ name + '!'

n = 1
puts 'nは' + n.to_s + 'です。'
n += 1
puts 'nは' + n.to_s + 'です。'
n -= 1
puts 'nは' + n.to_s + 'です。'


#　p30 コラム
# 割り切れない数などで、丸め誤差があるので、それは警戒する必要がある。

def fizz_buzz(n = nil)

  if n%15 == 0
    puts 'fizz_buzz'
  elsif n%3 == 0
    puts 'fizz'
  elsif n%5 == 0
    puts 'buzz'
  else
    puts n.to_s
  end
end

fizz_buzz(6)