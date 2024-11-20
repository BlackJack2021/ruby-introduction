# わざわざクラスにミックスインしなくても、モジュールの中でメソッドを定義することもできる
# ただしモジュールはクラスと違ってインスタンスを作れないので、
# 単なるメソッドの集まりを定義したい場合に適切となる
# 

module Loggable
  class << self
    def log(text)
      puts "[LOG] #{text}"
    end
  end
end

Loggable.log('Hello.')