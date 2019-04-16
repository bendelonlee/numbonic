class PasswordFacade
  attr_reader :number, :fact, :password
  def initialize(int = nil)
    @number = int || random_number_generator.distributed_random
    @fact = numbers_service.get_fact(number)
    set_number_from_fact
    @password = password_generator.make_password(number, fact)
  end

  private

  def set_number_from_fact
    @number = first_number_in_string(@fact).to_i
  end

  def first_number_in_string(string)
    string[/^\d+/]
  end

  def numbers_service
    NumbersService.new
  end

  def password_generator
    PasswordGenerator.new
  end

  def random_number_generator
    RandomNumberGenerator.new
  end

  def check_number

  end
end
