module AwesomeApi
  @base_url = ''
  @debug_mode = false

  # 別に以下は attr_accessor :base_url, :debug_mode としても同じ
  class << self
    def base_url=(value)
      @base_url = value
    end

    def base_url
      @base_url
    end

    def debug_mode=(value)
      @debug_mode=value
    end

    def debug_mode
      @debug_mode
    end
  end
end

# モジュールに既定値を設定する
AwesomeApi.base_url = 'http://example.com'
AwesomeApi.debug_mode = true

puts AwesomeApi.base_url
puts AwesomeApi.debug_mode