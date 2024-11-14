def convert_hash_syntax(old_syntax)
    pattern = /:(\w+) *(=>) *((?:'|")(?:\w|_|-)+(?:'|")|\d+|:\w+)/
    old_syntax.gsub(pattern) do |match|
        key, arrow, value = $1, $2, $3
        "#{key}: #{value}"
    end
end
