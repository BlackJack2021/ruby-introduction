a = <<TEXT
これはヒアドキュメントです。
複数行にわたる長い文字列を作成するのに便利です。
TEXT

puts a

# 識別子(ここではHTML)にはどのような単語を使ってもよい
# 慣習として全て大文字にする
b = <<HTML
<div>
    <img src="sample.jpg">
</div>
HTML

puts b

# <<- により、最後の識別子をインデントさせられる。
def some_method_1
    <<-TEXT
これはヒアドキュメントです。
<<- を使うと最後の識別子をインデントさせることができます。
    TEXT
end

puts some_method_1

# <<~ により、内部の文字列をインデントさせても先頭の空白を無視させられる
def some_method_2
    <<~TEXT
    これはヒアドキュメントです。
    <<~を使うと内部文字列のインデント部分が無視されます。
    TEXT
end

puts some_method_2

# <<~ を使いつつ、なおかつ行の行頭にスペースを入れたい場合はバックスラッシュを利用
def some_method_3
    <<~TEXT
    \  各行の行頭に半角スペースを2文字入れます。
    \  このとき行頭はバックスラッシュで指定します。
    TEXT
end

puts some_method_3

# ヒアドキュメントの中では式展開が有効
name = 'Alice'
c = <<TEXT
ようこそ、#{name}さん！
以下のメッセージをご覧ください。
TEXT

puts c

# ただし、識別子をシングルクオートで囲むと式展開は無効
# もしダブルクオーテーションで囲むと式展開は有効
# <<'TEXT'...TEXT か <<"TEXT"...TEXT で挙動が異なるということ

# ヒアドキュメントを直接引数として渡すことも可能
d = 'Ruby'
d.prepend(<<TEXT)
JAVA
PYTHON
TEXT

puts d

e = <<TEXT.upcase
Hello,
Good-bye.
TEXT

puts e

# ヒアドキュメントを2つ同時に使って配列を作る
f = [<<TEXT1, <<TEXT2]
Alice
Bob
TEXT1
Matz
Jnchito
TEXT2

puts f[0]
puts f[1]