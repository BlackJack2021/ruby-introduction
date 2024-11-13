r = /\d{3}-\d{4}/
puts r.class

# =~ を用いるとマッチした文字列の開始位置が返る
puts '123-4567' =~ /\d{3}-\d{4}/
puts 'hello' =~ /\d{3}-\d{4}/

if '123-4566' =~ /\d{3}-\d{4}/
    puts 'マッチしました'
else
    puts 'マッチしませんでした'
end

text = "私の誕生日は1977年7月17日です"
m = /(\d+)年(\d+)月(\d+)日/.match(text)
puts m[0], m[1], m[2], m[3]


m = /(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/.match(text)
puts m[:year]
puts m[:month]
puts m[:day]

# =~ を使って表現した場合には
# キャプチャの名前がそのままローカル変数に割り当てられる
if /(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/ =~ text
    puts "year=#{year}, month=#{month}, day=#{day}"
end


