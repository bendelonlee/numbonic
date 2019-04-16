describe NumbersService do
  it "can get a fact" do
    service = NumbersService.new

    result = service.get_fact(44)

    expect(result).to be_a(String)
    expect(result).to include('44')
    expect(result.length > 4).to eq(true)
  end
end
