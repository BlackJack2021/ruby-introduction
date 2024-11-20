class Tempo
  include Comparable

  attr_reader :bpm

  def initialize(bpm)
    @bpm = bpm
  end

  # <=> は Comparable モジュールで使われる演算子
  def <=>(other)
    # other が Tempo オブジェクトであれば bpm を比較できるようにする
    # それ以外のケースでは比較できないので nil を返す
    other.is_a?(Tempo) ? bpm <=> other.bpm : nill
  end

  def inspect
    "#{bpm}bpm"
  end
end

t_120 = Tempo.new(120)
t_180 = Tempo.new(180)

puts t_120 > t_180
puts t_120 <= t_180
puts t_120 == t_180
