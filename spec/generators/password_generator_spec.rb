require "rails_helper"

describe PasswordGenerator do
  it "takes a number and a fact and generates a password" do
    generator = PasswordGenerator.new
    password = generator.make_password(48, "48 is the number of Ptolemaic constellations.")
    expect(password).to include('4')
    expect(password).to include('8')
    expect(password.include?("ptolemaic") || password.include?("constellations")).to eq(true)
    expect(password.include?('.')).to eq(false)
  end
  it 'will generate a password even if all the words are common' do
    generator = PasswordGenerator.new

    password = generator.make_password(52, "52 is the number of cards in a standard playing deck.")
    expect(password).to include('standard')
  end
end
