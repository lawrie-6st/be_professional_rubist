# ruby brushupknowledge/20190328.rb


puts '７章クラスの復習'
class User
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def rename_bob
    name = 'bob'
    # このネームはrename_bobの中でしか定義されていないので、名前を書き換えることができ無い。
  end

  def rename_jessica
    self.name = 'jessica'
  end

  def rename_beth
    @name = 'beth'
    #インスタンス変数でもおっけい。
  end

end

user = User.new('alise')
user.rename_bob
puts user.name
user.rename_jessica
puts user.name
user.rename_beth
puts user.name



puts 'モンキーパッチとは'
puts '新しいメソッドを追加するだけでなく、既存のめそっどを上書きすることもできます。'
puts '既存の実装を上書きして、自分が期待する挙動に変更することをモンキーパッチといいます。'

class User
  def hello
    "hallo , #{@name}"
  end
end

puts user.hello


#気をつけること。
# ・既存のコードと同じようなメソッドを作ってしまって、二度手間にならないように気をつける。
# ・メソッドを上書きして、トラブらないように気をつける。
# 複雑になりそう？
#


module AwesomeApi
  @baseurl = ''
  @debug_mode = false

  class << self
    def baseurl=(value)
      @baseurl = value
    end
    def baseurl
      @baseurl
    end

    def debug_mode=(value)
      @debug_mode = value
    end
    def debug_mode
      @debug_mode
    end
  end
end

# ホントは以下の１行でOK
module AwesomeApi_v2
  @baseurl = ''
  @debug_mode = false
  class << self
    attr_accessor :baseurl, :debug_mode
  end
end


AwesomeApi.baseurl = 'something'
AwesomeApi.debug_mode = true
puts AwesomeApi.debug_mode
puts AwesomeApi.baseurl

AwesomeApi_v2.baseurl = 'somethingsomething'
AwesomeApi_v2.debug_mode = true
puts AwesomeApi_v2.debug_mode
puts AwesomeApi_v2.baseurl

#attr_accessorメソッドは、クラスやモジュールにインスタンス変数を読み書きするためのアクセサメソッドを定義します。
# 引数には、インスタンス変数名をシンボルか文字列で指定します（複数指定できます）。戻り値はnilです。
#



# TODO:例外処理で事前にエラーメッセージがわかっている場合は、それに合わせて、絞り込んであげる必要はある？
# 例えば同じ400番のHTTPエラーでも、複数メッセージがある場合は、特定のメッセージの時のみ例外処理してあげるなど。
400 電話番号
400 メールアドレスが無い場合

・必要なそうする。必要じゃない場合は、そうしない。
・目的により異なる。

・プログラミングの基本は、目的別に考えること。
・目的あっての手段。（目的合っての、手段）
・目的に必要な、目的ベース。