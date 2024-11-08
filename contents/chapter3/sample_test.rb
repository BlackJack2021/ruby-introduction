require 'minitest/autorun'

# < で継承を表現する
class SampleText < Minitest::Test
    def test_sample
        assert_equal 'RUBY', 'ruby'.upcase
    end
end
