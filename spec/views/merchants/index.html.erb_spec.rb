require 'rails_helper'

RSpec.describe "merchants/index.html.erb", type: :view do

  before :each do
    visit '/merchants'
  end
  describe 'as a visitor' do
    it ' I should see a list of merchants by name' do
      expect(page).to have_link("Schroeder-Jerde")
      expect(page).to have_link("Bernhard-Johns")
    end
  end
end
