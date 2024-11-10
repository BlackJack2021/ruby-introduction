numbers = [1, 2, 3, 4, 5]

#　.. の場合は終端を含む
puts numbers[1..3]

# ... の場合は終端を含まない
puts numbers[1...3]

some_string = 'abcdef'
puts some_string[1..3]

# 数値的な範囲を指定

def liquid?(temperature)
    0 <= temperature && temperature < 100
end

puts liquid?(-1)
puts liquid?(0)
puts liquid?(99)
puts liquid?(100)


def liquid?(temperature)
    (0...100).include?(temperature)
end

puts liquid?(-1)
puts liquid?(0)
puts liquid?(99)
puts liquid?(100)

# case 文で使う
def charge(age)
    case age
    when 0..5
        0
    when 6..12
        300
    when 13..18
        600
    else
        1000
    end
end

puts charge(3)
puts charge(12)
puts charge(16)
puts charge(25)


# 範囲オブジェクトから値が連続する配列を作る

puts (1..5).to_a
puts (1...5).to_a

puts ('a'..'e').to_a
puts ('a'...'e').to_a

# 繰り返し処理を行う
number = (1..4).to_a
sum = 0
numbers.each { |n| sum += n}
puts sum


# 配列に変換しなくてもできる
sum = 0
(1..4).each {|n| sum += n}
puts sum

# step メソッドを呼び出すと、値を増やす間隔を指定できる
numbers = []
(1..10).step(2) { |n| numbers << n}
puts numbers
