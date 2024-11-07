# Alice, Bob, Carol と順に検索し、最初に見つかったユーザーを変数に格納
user = find_user('Alice') || find_user('Bob') || find_user('Carol')

# 正常なユーザーであればメールを送信する
# Ruby ではメソッド名の末尾に?をつけることで、
# そのメソッドが真偽値を返すことを慣習的に示す
user.valid? && send_email_to(user)


# and や or を && || の代わりに条件分岐で使おうとすると
# 評価順番の優先順位が異なるため思わぬ不具合を招く危険性がある
t1 = true
t2 = true
f1 = false
t1 ¦¦ t2 && f1 #=> true
t1 or t2 and f1 #=> false

# 制御フローは and or で書くといい感じの時もある
user.valid? && send_mail_to user
# ↑ (user.valid? && send_mail_to) と解釈されるのでダメ
user.valid? and send_mail_to user
# ↑ (user.valid?) and (send_mail_to user) と解釈されるので大丈夫

# case 文
country = 'italy'

case country
when 'japan'
    'こんにちは'
when 'us'
    'Hello'
when 'italy'
    'Ciao'
else
    '???'
end

# ?で終わるメソッドは真偽値を返す慣習
# !で終わるメソッドは!がついていないメソッドよりも危険という意味を持つ
# 例えば破壊的メソッドなど。
a = 'ruby'
a.upcase!

# だから例えば破壊的メソッドを定義するときは!を使った方がいい
def reverse_upcase!(s)
    s.reverse!
    s.updcase!
    s
end

# 変数名の最後に ? や ! をつけることはできない
