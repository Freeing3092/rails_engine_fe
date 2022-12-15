require 'rails_helper'

RSpec.describe "items/show.html.erb", type: :view do
  describe 'as a visitor' do
    it 'I see the item name, description, and unit price' do
      visit '/items/179'

      expect(page).to have_content("Name: Item Qui Veritatis")
      expect(page).to have_content("Description: Totam labore quia harum dicta eum consequatur qui. Corporis inventore consequatur. Illum facilis tempora nihil placeat rerum sint est. Placeat ut aut. Eligendi perspiciatis unde eum sapiente velit.")
      expect(page).to have_content("Price: 906.17")
    end
  end
end
