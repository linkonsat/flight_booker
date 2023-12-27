# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Flight index', type: :system do
  describe 'create bookings page' do
    it 'Succesfuly creates a booking.' do
      create(:airport)
      create(:airport, code: "SFO")
      puts response
      visit '/'
      puts response
      page.select 'LAX', from: 'departure_id'
      page.select 'SFO', from: 'destination_id'
      page.select '12-08-29', from: 'departure_time'
      fill_in 'quantity', with: '1'
      click_on 'Search'
      debugger
      page.choose 'flight_id_2'
      page.choose 'price_105'
      click_on 'submit'
      debugger
      fill_in 'booking_passengers_attributes_0_name', with: 'bob'
      fill_in 'booking_passengers_attributes_0_email', with: 'bob@bob.com'
      fill_in 'booking_passengers_attributes_0_age', with: '25'
      click_on 'Create Booking'
      expect(page).to have_content('Thank you for booking with totally real airlines!')
    end
  end
end
