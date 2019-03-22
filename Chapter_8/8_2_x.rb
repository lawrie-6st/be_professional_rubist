# ruby Chapter_8/8_2_x.rb

puts '8.2.1モジュールの用途'
# モジュールの用途
# 継承を使わずに暮らすにインスタンスメソッドを追加する。もしくは、上書きする。
# 複数のクラスに対して共通の特異メソッド（クラスメソッド）を追加する。
# クラス名や定数名の衝突を防ぐために名前空間を作る。
# 関数的メソッドを定義する。
# シングルトンオブジェクトのように扱って、設定値などを保持する。

puts '8.2.2モジュールの定義'
module Greeter
  def hello
    puts 'hallo'
  end
end

# greeter = Greeter.new    クラスじゃないので、インスタンス化できない。
# module AwesomeGreeter < Greeter モジュールは継承できない。
# end

