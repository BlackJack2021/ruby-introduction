sum = 0
# n = 0,1,2,3,4 の繰り返し処理
5.times {|n| sum += n}
puts sum

sum = 0
# 必要なければ n を取り除いてもよい
5.times {sum += 1}
puts sum

results = []
# 10, 11, 12, 13, 14
10.upto(14) {|n| results << n}
puts results

results = []
14.downto(10) {|n| results << n}
puts results

# 数値を x ずつ増やした操作
results = []
1.step(10, 2) {|n| results << n}
puts results

# while
results = []
while results.size < 5
    results << 1
end
puts results

results = []
n = 1
while results.size < 5
    results << n
    n += 1
end
puts results