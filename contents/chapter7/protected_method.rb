class User
  attr_reader :name

  def initialize(name, weight)
    @name = name
    @weight = weight
  end

  def heavier_than?(other_user)
    other_user.weight < @weight
  end

  # protected 以下で指定されたメソッドは protected method となる
  # 同じクラスかサブクラスならレシーバ付きで呼び出せる
  protected

  def weight
    @weight
  end
end

alice = User.new('Alice', 50)
bob = User.new('Bob', 60)

puts alice.heavier_than?(bob)
puts bob.heavier_than?(alice)

puts alice.weight

# 上の実装は単に protected method としてゲッターメソッドを定義しているが
# これは以下のようにもっとシンプルに記述することも可能
class User
  attr_reader :name
  protected attr_reader :weight

  def initialize(name, weight)
    @name = name
    @weight = weight
  end

  def heavier_than?(other_user)
    other_user.weight < @weight
  end
end