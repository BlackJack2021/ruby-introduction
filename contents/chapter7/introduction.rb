class User
    attr_reader :first_name, :last_name, :age
    def initialize(first_name, last_name, age)
        @first_name = first_name
        @last_name = last_name
        @age = age
    end

    def full_name
        "#{first_name} #{last_name}"
    end
end

users = []
users << User.new('Alice', 'Ruby', 20)
users << User.new('Bob', 'Python', 30)

users.each do |user|
    puts "氏名: #{user.full_name}、年齢: #{user.age}"
end


# インスタンス変数の定義には @ を利用する
class User
    def initialize(name)
        @name = name
    end

    def hello
        "Hello, I am #{@name}"
    end
end

user = User.new('Alice')
puts user.hello


# インスタンス変数は外部から直接参照したり書き換えたりできない。
# 専用のゲッター、セッターメソッドを定義する必要がある
class User
    def initialize(name)
        @name = name
    end

    def name
        @name
    end

    def name=(value)
        @name = value
    end
end

user = User.new('Alice')
user.name = 'Bob'
puts user.name

# attr_accessor というメソッドを使うと、
# これらのゲッターセッターメソッドを定義する処理を省略できる
class User
    attr_accessor :name

    def initialize(name)
        @name = name
    end
end

user = User.new('Alice')
user

# クラスメソッドを定義する
class User
    def initialize(name)
        @name = name
    end

    # self. をつけるとクラスメソッド
    def self.create_users(names)
        names.map do |name|
            User.new(name)
        end
    end

    def hello
        "Hello, I am #{@name}."
    end
end

names = ['Alice', 'Bob', 'Carol']
users = User.create_users(names)
users.each do |user|
    puts user.hello
end

class Product
    # 定数。クラスメソッドからでもインスタンスメソッドからでもアクセスできる
    DEFAULT_PRICE = 0

    def self.default_price
        DEFAULT_PRICE
    end

    def default_price
        DEFAULT_PRICE
    end
end

# クラスメソッドの呼び出し
puts Product.default_price
# インスタンスメソッドの呼び出し
product = Product.new
puts product.default_price


    