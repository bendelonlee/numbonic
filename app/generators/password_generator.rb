class PasswordGenerator
  COMMON_WORDS = Set.new
  File.open('./app/data/common_words.txt').each { |line| COMMON_WORDS.add(line.chomp) }

  def make_password(number, fact)
    @fact = fact.delete('.,0123456789').downcase
    @key_words = @fact.split().reject do |word|
      COMMON_WORDS.include?(word)
    end
    ensure_key_words
    [@key_words.sample, number].shuffle.join
  end

  def ensure_key_words
    if @key_words.empty?
      @key_words << @fact.split.max_by{|word| word.length}
    end
  end
end
