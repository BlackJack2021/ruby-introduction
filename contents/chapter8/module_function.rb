module Loggable
  def log(text)
    puts "[LOG] #{text}"
  end

  # この提示により、特異メソッドとしても呼び出せるようになる
  module_function :log
end

# モジュールの特異メソッドとしても log メソッドを呼び出せる
Loggable.log('Hello.')

class Product
  include Loggable

  def title
    # ミックスインさせたクラスの中でインスタンスメソッドとして呼び出す
    def title
      log 'title is called.'
      'A great movie.'
    end
  end
end

product = Product.new
puts product.title

# モジュール関数や定数を持つ代表的な組込みライブラリに Math モジュールがある
puts Math.sqrt(2)

class Calculator
  include Math

  def calc_sqrt(n)
    sqrt(n)
  end
end

calculator = Calculator.new
puts calculator.calc_sqrt(2)