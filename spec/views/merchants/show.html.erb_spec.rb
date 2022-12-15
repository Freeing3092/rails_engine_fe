require 'rails_helper'

RSpec.describe "merchants/show.html.erb", type: :view do
  before :each do
    visit '/merchants/1'
  end

  describe 'as a visitor' do
    it 'I see a list of merchant items' do
      within("#items") do
        expect(page).to have_content('Item Nemo Facere')
        expect(page).to have_content('Item Expedita Aliquam')
      end
    end
  end
end
