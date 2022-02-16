require 'rails_helper'

RSpec.describe 'Flight index', type: :system do
  describe 'index page' do
    it 'Does not show flights before a search is entered' do
      visit "/"
      expect(page).to have_content('No valid flights found. Please enter another search to find flights')
    end

    it 'Should display a message if no flights are found' do 
      visit "/"
      page.select "SFO", from: "departure_id"
      fill_in "quantity", with: "1"
      click_on "Save"
      expect(page).to have_content('No valid flights found. Please enter another search to find flights')
  end
end
end