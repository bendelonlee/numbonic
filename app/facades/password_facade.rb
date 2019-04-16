class PasswordFacade
  attr_reader :number, :fact, :password
  def initialize(int = nil)
    @number = int || random_number_generator.distributed_random
    @fact = numbers_service.get_fact(number)
    @password = password_generator.make_password(number, fact)
  end

  def numbers_service
    NumbersService.new
  end

  def password_generator
    PasswordGenerator.new
  end
end
