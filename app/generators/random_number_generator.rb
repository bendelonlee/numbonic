class RandomNumberGenerator
  def distributed_random
    number_of_digits = rand(4) + 1
    str = ''
    number_of_digits.times do
      str += rand(10).to_s
    end
    str.to_i
  end
end
