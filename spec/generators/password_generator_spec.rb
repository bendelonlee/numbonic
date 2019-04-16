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
end
