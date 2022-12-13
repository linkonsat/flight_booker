

require 'rails_helper'

RSpec.describe 'Flight index', type: :system do
  describe 'index page' do
    it 'Does not show flights before a search is entered' do
      build(:airport, code: "SFO", id: 2) 
      build(:flight) 
      visit '/'
      expect(page).to have_content('No valid flights found. Please enter another search to find flights.')
    end

    xit 'Should display a message if no flights are found' do
      build(:airport, code: "SFO", id: 2)
      build(:flight)
      visit '/'
      page.select 'SFO', from: 'departure_id'
      page.select 'SFO', from: 'destination_id'
      page.select '12-08-29', from: 'departure_time'
      fill_in 'quantity', with: '1'
      debugger
      click_on 'Search'
      expect(page).to have_content('No valid flights found. Please enter another search to find flights.')
    end
    xit 'Should display a flight if a flight is found' do
      build(:airport)
      build(:airport, code: "SFO", id: 2)
      build(:flight)
      visit '/'
      page.select 'LAX', from: 'departure_id'
      page.select 'SFO', from: 'destination_id'
      page.select '12-08-29', from: 'departure_time'
      fill_in 'quantity', with: '1'
      click_on 'Search'
      expect(page).to have_content('10:35:00 PM')
    end
    xit 'Should load the passenger signup form is selected' do
      build(:airport)
      build(:airport, code: "SFO", id: 2)
      build(:flight)
      visit '/'
      page.select 'LAX', from: 'departure_id'
      page.select 'SFO', from: 'destination_id'
      page.select '12-08-29', from: 'departure_time'
      fill_in 'quantity', with: '1'
      click_on 'Search'
      choose(option: '1')
      click_on 'submit'
      expect(page).to have_content('Passenger sign-up form')
    end
  end
end
