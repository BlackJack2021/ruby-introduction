class Product
  def title
    log 'title is called.'
    'A great movie'
  end

  private

  def log(text)
    puts "[LOG] #{text}"
  end
end

class User
  def name
    log 'name is called.'
    'Alice'
  end

  def log(text)
    puts "[LOG] #{text}"
  end
end

product = Product.new
puts product.title

user = User.new
puts user.name


# 上記のクラスの log 重複問題はモジュールを使うと改善できる
module Loggable
  def log(text)
    puts "[LOG] #{text}"
  end
end

class Product
  # 上記のモジュールをクラスに取り込む
  include Loggable

  def title
    log 'title is called.'
    'A great movie'
  end
end

class User
  include Loggable
  def name
    log 'name is called.'
    'Alice'
  end
end

product = Product.new
puts product.title

user = User.new
puts user.name

# このようにモジュールをクラスに include して機能を追加することを「ミックスイン」という。
# private メソッドを指定することもできる

module Loggable
  private
  def log(text)
    puts "[LOG] #{text}"
  end
end

# include 先のメソッドを利用するモジュールを記述することもできる

module Taggable
  def price_tag
    "#{price}円"
  end
end

class Product
  include Taggable
  
  def price
    1000
  end

end

product = Product.new()
puts product.price_tag

# self をつけてもいい
# この場合の self は include 先のクラスのインスタンスを示す

module Taggable
  def price_tag
    "#{self.price}円"
  end
end

# モジュールをextend する
# extend を使うとモジュール内のメソッドをそのクラスのクラスメソッドにできる

module Loggable
  def log(text)
    puts "[LOG] #{text}"
  end
end

class Product
  # Loggable モジュールのメソッドをクラスメソッドとして追加する
  extend Loggable
  log "Defined Product class!"

  def self.create_products(names)
    log 'create_products is called'
    names
  end
end

Product.create_products('iPhone')

# include と extend の違いは端的に言えば
# インスタンスメソッドを追加するかクラスメソッドを追加するかだけの違い

