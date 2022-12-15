require 'rails_helper'

RSpec.describe "items/index.html.erb", type: :view do
  describe 'as a visitor' do
    it 'I see a list of all items' do
      visit '/items'
      
      expect(page).to have_content("Item Nemo Facere")
      expect(page).to have_content("Item Qui Veritatis")
    end
  end
end
