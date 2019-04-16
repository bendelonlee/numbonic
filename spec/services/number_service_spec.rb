describe NumberService do
  it "can get a fact" do
    service = NumberService.new

    result = service.get_fact(44)

    expect(result).to be_a(String)
    expect(result.length > 4).to eq(true)
  end
end
