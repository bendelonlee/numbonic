require "rails_helper"

describe RandomNumberGenerator do
  it 'generates a random number' do
    rng = RandomNumberGenerator.new
    result = rng.distributed_random
    expect(result).to be_a(Integer)
    expect(result < 100000)
  end
end
