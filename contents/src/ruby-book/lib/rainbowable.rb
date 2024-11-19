module Rainbowable
  def rainbow
    # 1. to_s メソッドを使って自分自身の文字列表現を取得する
    str = self.to_s

    # ループカウンタと、色を付けた文字を順に格納する配列を用意
    count = 0
    colored_chars = []

    # 2. 取得した文字列を1文字ずつループ処理する
    str.each_char do |char|
      # 31, 32, ..., 36 を順番に割り振る
      color = 31 + count % 6
      
      # 3. 各文字の手前に ANSIエスケープシーケンスを付与し、格納
      colored_chars << "\e[#{color}m#{char}"
      count +=1
    end

    # 4. 各文字を連結して1つの文字列にする
    ret = colored_chars.join

    # 5. 最後に文字色をリセットするための \e[0m を付与
    ret + "\e[0m"
  end
end