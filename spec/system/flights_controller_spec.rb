require 'rails_helper'

RSpec.describe 'Flight index', type: :system do
  describe 'index page' do
    it 'Does not show flights before a search is entered' do
      visit "/"
      expect(page).to have_content('No valid flights found. Please enter a search to find flights')
    end
  end
end