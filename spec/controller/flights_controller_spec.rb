require 'rails_helper'

RSpec.describe 'Flight index', type: :system do
  describe 'index page' do
    visit "/"
    page.select "LAX", from: "departure_id"
    page.select "SFO", from: "destination_id"
    fill_in "quantity", with: "1"
    click_on "Save"
    choose(option: "2" )
    click_on "submit"
    expect(page).to have_content('Passenger sign-up form')
end
end