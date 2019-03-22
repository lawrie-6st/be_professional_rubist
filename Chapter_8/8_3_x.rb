# ruby Chapter_8/8_3_x.rb


module Loggable
  def log(text)
    puts "[LOG]#{text}"
  end
end

class Product
  include Loggable
  def title
    log 'title is called' 'A greet movie'
  end
end
private

class User
  include Loggable
  extend Loggable
  def name
    log 'name is called' 'Alice'
  end
end

product = Product.new
product.title
user = User.new
user.name

# extendをつけると、クラスから引っ張って来れる。
user.log('なりたいものはメロンパン')

puts 'memo　モジュールはincludeするだけで追加できて良いが、クラスみたいにどこから引っ張ってきたかわかんなくなるから、使い所を選びたいところ。
また、privateなどの処理もクラスと一緒'

