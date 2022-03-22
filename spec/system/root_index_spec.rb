# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Flight index', type: :system do
  describe 'index page' do
    it 'Does not show flights before a search is entered' do
      visit '/'
      expect(page).to have_content('No valid flights found. Please enter another search to find flights')
    end

    it 'Should display a message if no flights are found' do
      visit '/'
      page.select 'SFO', from: 'departure_id'
      page.select 'SFO', from: 'destination_id'
      page.select '12-08-29', from: 'departure_time'
      fill_in 'quantity', with: '1'
      click_on 'Save'
      expect(page).to have_content('No valid flights found. Please enter another search to find flights')
    end
    it 'Should display a flight if a flight is found' do
      visit '/'
      page.select 'LAX', from: 'departure_id'
      page.select 'SFO', from: 'destination_id'
      page.select '12-08-29', from: 'departure_time'
      fill_in 'quantity', with: '1'
      click_on 'Save'
      expect(page).to have_content('10:35:00 PM')
    end
    it 'Should load the passenger signup form is selected' do
      visit '/'
      page.select 'LAX', from: 'departure_id'
      page.select 'SFO', from: 'destination_id'
      page.select '12-08-29', from: 'departure_time'
      fill_in 'quantity', with: '1'
      click_on 'Save'
      choose(option: '2')
      click_on 'submit'
      expect(page).to have_content('Passenger sign-up form')
    end

    it 'test' do
      visit '/find_flight'
      fill_in 'email', with: 'testuser@gmail.com'
      fill_in 'flight_id', with: '2'
      click_on 'Submit'
      expect(page).to have_content('Departure airport: LAX')
    end
  end
end
