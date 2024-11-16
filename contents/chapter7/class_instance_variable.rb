class Product
  # クラスインスタンス変数と呼ぶ。
  @name = 'Product'

  # クラスインスタンス変数に対するゲッターメソッド
  def self.name
    @name
  end

  # こちらはただのインスタンス変数
  def initialize(name)
    @name=name
  end

  def name
    @name
  end
end

# クラスインスタンス変数はインスタンスからは参照できない。
# 参照したい場合は「クラス変数」を用いる

class Product
  # @@ を使って定義されるのがクラス変数
  @@name = 'Product'
  
  def self.name
    @@name
  end

  def initialize(name)
    @@name = name
  end

  def name
    @@name
  end
end

puts Product.name

class DVD < Product
  @@name = 'DVD'

  def self.name
    @@name
  end

  def upcase_name
    @@name.upcase
  end
end

# DVD クラスが定義された時点で親クラスのクラス変数も変更される
puts Product.name
puts DVD.name