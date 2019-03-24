# ruby Chapter_10/10_5_x.rb

puts 'プロックはいろんな呼び出し方がある'
add_proc = proc { |a, b| a + b }
puts add_proc.call(10, 20)
puts add_proc.yield(10, 20)
puts add_proc.call(10, 20)
puts add_proc[10, 20]

puts [10, 20] === add_proc

puts '10.5.1 Procオブジェクトについてもっと詳しく。'
def judge(age)
  adult = proc { |n| n > 20 }
  child = proc { |n| n < 20 }

  case age
  when adult
    'おとなです'
  when child
    '子供です'
  else
    'はたちです'
  end
end

puts judge(25)
puts judge(18)
puts judge(20)
puts '10.5.2 &とto_procメソッド'
# https://qiita.com/kidach1/items/15cfee9ec66804c3afd2
reverse_proc = proc { |s| s.reverse }
puts 'Procオブジェクトをブロックで渡したい場合はAndで渡してあげる'
puts %w[Ruby Java Perl].map(&reverse_proc)

puts 'Procオブジェクトに対してto_procメソッドを呼んでも自分に帰るだけ'
other_proc = reverse_proc.to_proc
puts reverse_proc.equal?(other_proc)

# メソッドをto_procにわたすことで、プロックオブジェクトに変換できる。
split_proc = :split.to_proc
puts split_proc

# splitと同じ
puts split_proc.call('a-b-c-d e')

# 第二引数を渡すと、その文字で分割してくれる。
puts split_proc.call('a-b-c-d e', '-')

# 第三引数を渡すと、分割する個数を分けてくれる。
puts split_proc.call('a-b-c-d e', '-', 3)


# もっと簡潔に書きたい場合は Procを使わずに書くこともできる。
puts ['ruby','java','perl'].map {|s|s.upcase}
puts ['ruby','java','perl'].map(&:upcase)


puts '10.5.3Procオブジェクトとクロージャ'
def generate_proc(array)
  counter = 0
  Proc.new do
    counter += 10
    array << counter
  end
end

value = []
sample_proc = generate_proc(value)
puts value

# アレイも追加され続ける。
puts sample_proc.call
puts sample_proc.call
puts sample_proc.call

puts '10.5.4 Procオブジェクトとクロージャ'
def proc_return
  f = Proc.new{ |n| return n * 10 }
  ret = [1,2,3].map(&f)
  "ret:#{ret}"
end

def lambda_return
  f = ->(n){ return n * 10 }
  ret = [1,2,3].map(&f)
  "ret:#{ret}"
end

puts proc_return
puts lambda_return

def proc_break
  f = Proc.new{ |n| break n * 10 }
  ret = [1,2,3].map(&f)
  "ret:#{ret}"
end

def lambda_break
  f = ->(n){ return n * 10 }
  ret = [1,2,3].map(&f)
  "ret:#{ret}"
end
# ブレークはラムダとプロックで動作が違うので注意

puts proc_return
puts lambda_return
puts lambda_break
puts proc_break

