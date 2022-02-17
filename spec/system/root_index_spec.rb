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
  it 'Should display a flight if a flight is found' do 
    visit "/"
    page.select "LAX", from: "departure_id"
    page.select "SFO", from: "destination_id"
    fill_in "quantity", with: "1"
    click_on "Save"
    expect(page).to have_content('2012-08-29T22:35:00+00:00')
end
it 'Should load the passenger signup form is selected' do 
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
end