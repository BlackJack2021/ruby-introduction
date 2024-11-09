# map
# << により配列の終わりに要素を追加できる
numbers = [1, 2, 3, 4, 5]
new_numbers = []
numbers.each {|number| new_numbers << number * 10}
puts new_numbers

# select (find_all)
numbers = [1, 2, 3, 4, 5, 6]
even_numbers = numbers.select {|number| number.even?}
puts even_numbers

# reject
# 条件に一致しないものだけを抽出
numbers = [1, 2, 3, 4, 5, 6]
non_multiple_of_three = numbers.reject { |n| n % 3 == 0}
puts non_multiple_of_three

# find (detect)
# ブロックの戻り値が真になった最初の要素を返す
numbers = [1, 2, 3, 4, 5, 6]
first_even_number = numbers.find { |n| n.even?}
puts first_even_number

# ブロック変数が1つで処理がメソッド一つで引数がないなら以下のようにも書ける
puts ['ruby', 'java', 'python'].map {|s| s.upcase}
puts ['ruby', 'java', 'python'].map(&:upcase)
