class PasswordGenerator
  COMMON_WORDS = Set.new
  File.open('./app/data/common_words.txt').each { |line| COMMON_WORDS.add(line.chomp) }

  def make_password(number, fact)
    fact = fact.delete(number.to_s + '.').downcase
    key_words = fact.split().reject do |word|
      COMMON_WORDS.include?(word)
    end

    [key_words.sample, number].shuffle.join
  end
end
