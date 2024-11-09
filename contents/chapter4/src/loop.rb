numbers = [1, 2, 3, 4]
sum = 0

# Ruby における繰り返し処理の書き方。
# Ruby ではほとんど for 文を利用しない。
# 配列自身に繰り返しを指示する
numbers.each do |n|
    sum += n
end

puts sum


# 配列から値が奇数の要素を削除する
a = [1, 2, 3, 1, 2, 3]
a.delete_if do |n|
    n.odd?
end

puts a


=begin
偶数であれば10倍したものを、奇数であればその数を足して
合計を算出する処理を実装
=end
b = [1, 2, 3, 4, 5]
sum = 0
b.each do |n|
    even_case = n*10
    odd_case = n
    sum_value = n.even? ? n*10 : n
    sum += sum_value
end

puts sum

=begin
以下の書き方ではブロック内ではブロック内の変数が優先されるが
混乱を招くので避けるべき
=end
sum = 0
sum_value = 100
b.each do |sum_value|
    sum += sum_value
end

# 以下の出力は 15 になる
puts sum 

=begin
do end の代わりに {} を使うこともできる
明確に使い分けが決まっているわけではないが、
- 改行を含む長いブロックを書くときは do end
- 1行でコンパクトに書きたいときは {}
という使い分けがされるケースが多い
=end
numbers = [1, 2, 3, 4]
sum = 0
numbers.each {|n| sum+=n}
puts sum