class NumbersService
  def get_fact(number)
    response = conn.get("/#{number}/trivia?notfound=floor")
    response.body
  end


  private

  def conn
    Faraday.new('http://numbersapi.com') do |faraday|
      faraday.adapter Faraday.default_adapter
    end
  end
end
