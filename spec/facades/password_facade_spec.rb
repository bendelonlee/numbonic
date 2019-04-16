require "rails_helper"
describe PasswordFacade do
  describe 'instance methods' do
    it '.reset_number_from_fact' do
      facade = PasswordFacade.new(312)
      expect(facade.number).to eq(304)
    end
  end
end
