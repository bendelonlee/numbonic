require "rails_helper"
describe 'it should display information' do
  it ', it has static information' do
    visit '/'
    expect(page).to have_content("Numonic")
    expect(page).to have_content("A password generator for the numerically interested.")
    expect(page).to have_content("Your memorable number:")
    expect(page).to have_content("Your memorable fact:")
    expect(page).to have_content("Your memorable password:")
  end
end
