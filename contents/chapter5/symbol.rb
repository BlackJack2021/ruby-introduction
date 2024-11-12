# シンボルは文字列のようなもの
# :xxx と記述する


# シンボルは ruby の中では整数として扱われるため、
# 以下の2つの比較ならシンボルの比較の方が早い
:apple == :apple
'apple' == 'apple'

# 同一のシンボルは同一のオブジェクト
:apple.object_id == :apple.object_id
'apple'.object_id != "apple".object_id

# シンボルはイミュータブルなので、破壊的な変更ができない

# シンボルは「ソースコード上では名前を識別できるようにしたいが、
# その名前が必ずしも文字列ではない場合」に良く利用される
# 例えば連想配列
currencies = {
    :japan => 'yen',
    :us => 'dollar',
    :india => 'rupee'
}
puts currencies[:japan]

# 例えば、タスクの状態を整数値を管理する制御フロー
status =:done
case status
    when :todo
        puts 'これからやります'
    when :doing
        puts '今やってます'
    when :done
        puts 'もう終わりました'
    end

# 連想配列の指定でシンボルを利用する場合、以下のようにも定義できる
currencies = {
    japan: 'yen',
    us: 'dollar',
    india: 'rupee'
}
puts currencies[:us]

# キーワード引数を持つ関数の定義
def buy_burger(menu, drink: true, potato: true)
    cart = []
    cart << menu
    if drink
        cart << '飲み物'
    end
    if potato
        cart << 'ポテト'
    end

    cart

end

puts buy_burger('ハンバーガー', potato:false)
    
# デフォルト値を省略することもできる
def buy_burger(menu, drink:, potato:)
    # ...
end
