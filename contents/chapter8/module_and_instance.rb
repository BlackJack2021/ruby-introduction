# モジュール内で定義したメソッドの中でインスタンス変数を読み書きするのは
# 依存先のインスタンス変数を前提としてしまうことになるためあまりよくない。
# それならば、まだゲッターセッターを使うなど「特定のメソッドの存在」を前提にした方が良い

module NameChangeable
  def change_name
    self.name = 'アリス'
  end
end

class User
  include NameChangeable
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end

user = User.new('alice')
user.change_name
puts user.name