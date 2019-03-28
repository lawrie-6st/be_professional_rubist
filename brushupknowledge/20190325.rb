# ruby brushupknowledge/20190325.rb
require_relative  '../Chapter_3/3_3_2/lib/fizz_buzz'
puts 'reprise chapter 2'

name = 'alice'
puts 'hello,' + name + '!'

n = 1
puts 'nは' + n.to_s + 'です。'
n += 1
puts 'nは' + n.to_s + 'です。'
n -= 1
puts 'nは' + n.to_s + 'です。'

# 　p30 コラム
# 割り切れない数などで、丸め誤差があるので、それは警戒する必要がある。


fizz_buzz(6)


puts 'reprise chapter 3'
#３章は結構頑張ったので、覚えてる。

require 'rspec'
RSpec.describe do
  it 'should something' do
    puts 'i am perfect man'
  end
end

puts 'reprise chapter 4'
