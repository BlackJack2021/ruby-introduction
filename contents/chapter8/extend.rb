# クラスだけではなく個々のオブジェクトに extend することもできる
# 例えば以下では、String クラスのインスタンスに対して extend を行ったもの

module Loggable
  def log(text)
    puts "[LOG] #{text}"
  end
end

s = 'abc'
s.extend Loggable
puts s.log('Hello.')