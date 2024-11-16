class Product
  attr_reader :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end
end

product = Product.new('A grate movie', 1000)
puts product.name
puts product.price

# DVD に Product を継承させる
class DVD < Product
  attr_reader :running_time
  
  def initialize(name, price, running_time)
    # 親クラスの 同名メソッドを呼び出すには、super() を利用する
    super(name, price)
    @running_time = running_time
  end
end

dvd = DVD.new('A great movie', 1000, 120)
puts dvd.name
puts dvd.price
puts dvd.running_time

# スーパークラスとサブクラスで引数が同じなら、単に super と記述するだけでも
# 自動でスーパークラスに引き渡せる（ただその場合、そもそもサブクラスで同盟メソッドを定義する必要がない）

# オーバーライド
class Product
  attr_reader :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end

  # 文字列化して出力する to_s メソッドを準備
  def to_s
    "name: #{name}, price: #{price}"
  end
end

class DVD < Product
  attr_reader :running_time
  
  def initialize(name, price, running_time)
    super(name, price)
    @running_time=running_time
  end

  # 親クラスのメソッドを running_time まで出力できるようにオーバーライド
  def to_s
    "name: #{name}, price: #{price}, running_time: #{running_time}"
  end
end

dvd = DVD.new('An awesome film', 3000, 120)
puts dvd.to_s