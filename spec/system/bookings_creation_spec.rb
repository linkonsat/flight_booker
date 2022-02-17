require 'rails_helper'

RSpec.describe 'Flight index', type: :system do
  describe 'create bookings page' do
    it "Succesffuly creates a booking." do 
        visit "/"
        page.select "LAX", from: "departure_id"
        page.select "SFO", from: "destination_id"
        fill_in "quantity", with: "1"
        click_on "Save"
        choose(option: "2" )
        click_on "submit"
        fill_in "booking_passengers_attributes_0_name", with: "bob"
        fill_in "booking_passengers_attributes_0_email", with: "bob@bob.com"
        fill_in "booking_passengers_attributes_0_age", with: "25"
        click_on "Create Booking"
        expect(page).to have_content('Thank you for booking with totally real airlines!')
    end
end
end