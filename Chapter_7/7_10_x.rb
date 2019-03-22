# ruby Chapter_7/7_10_x.rb
# エイリアスメソッド

class User
  def hallo
    'hallo!'
  end

  def name=(value)
    @name = value
  end
  alias greeting hallo
  undef freeze
end


user = User.new
puts user.hallo
puts user.greeting

# メソッドの削除
#user.freeze

# 演算子の挙動を独自に再定義する。
user.name = 'Alice'


# eqlと===は一緒（when case文では ===を使用する。その他ではeql）
a = 1
b = 2
a.eql?(b)



# rubyでは既存のメソッドやクラスが上書きできる。（追加も可能。）
# 既存の実装に上書きでクラスを実装することをモンキーパッチと言う。
puts '7.10.8,特異メソッド'
alice = 'i am alice'
bob = 'i am bob'
def alice.shuffle
  chars.shuffle.join
end
puts alice.shuffle
# puts bob.shuffle shuffleが定義されて消えてしまったので、呼び出せない。

puts '7.10.9,ダック・タイピング'
# 他の静的言語では、そのメソッドが本当に呼び出されているのかどうかをチェックすることが必要なのだが、
# rubyでは、メソッドが複数あれば、どれかがあればOKな実装になっているため、確実にそのメソッドが呼び出されていることを確認できない。
#