module Baseball
  class File
    
  end
  class Second
    def file_with_nesting
      puts File
    end
  end
end

class Baseball::Second
  def file_without_nesting
    puts File
  end
end

second = Baseball::Second.new
puts second.file_with_nesting
puts second.file_without_nesting