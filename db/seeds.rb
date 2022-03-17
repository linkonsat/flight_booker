# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Airport.create!(code: 'SFO')
Airport.create!(code: 'LAX')
Airport.create!(code: 'NYA')
Airport.create!(code: 'DAL')
Airport.create!(code: 'BOS')
Airport.create!(code: 'FKX')
Flight.create!(destination_airport_id: 1, departure_time: DateTime.new(2012, 8, 29, 22, 35, 0).to_s,
              arrival_time: DateTime.new(2012, 10, 29, 22, 39, 0).to_s, departure_area: 'Terminal A1', departure_airport_id: 1)
Flight.create!(destination_airport_id: 1, departure_time: DateTime.new(2012, 8, 29, 22, 35, 0).to_s,
              arrival_time: DateTime.new(2012, 10, 22, 22, 45, 0).to_s, departure_area: 'Terminal A1', departure_airport_id: 2)
Flight.create!(destination_airport_id: 2, departure_time: DateTime.new(2012, 8, 29, 22, 35, 0).to_s,
              arrival_time: DateTime.new(2012, 10, 17, 22, 55, 0).to_s, departure_area: 'Terminal A1', departure_airport_id: 3)
Flight.create!(destination_airport_id: 2, departure_time: DateTime.new(2012, 8, 29, 22, 35, 0).to_s,
              arrival_time: DateTime.new(2012, 10, 13, 22, 25, 0).to_s, departure_area: 'Terminal A1', departure_airport_id: 2)
Flight.create!(destination_airport_id: 3, departure_time: DateTime.new(2012, 8, 29, 22, 35, 0).to_s,
              arrival_time: DateTime.new(2012, 10, 4, 22, 15, 0).to_s, departure_area: 'Terminal A1', departure_airport_id: 3)
Flight.create!(destination_airport_id: 3, departure_time: DateTime.new(2012, 8, 29, 22, 35, 0).to_s,
              arrival_time: DateTime.new(2012, 10, 20, 22, 45, 0).to_s, departure_area: 'Terminal A1', departure_airport_id: 2)
Flight.create!(destination_airport_id: 4, departure_time: DateTime.new(2012, 8, 29, 22, 35, 0).to_s,
              arrival_time: DateTime.new(2012, 10, 23, 22, 33, 0).to_s, departure_area: 'Terminal A1', departure_airport_id: 4)
Flight.create!(destination_airport_id: 4, departure_time: DateTime.new(2012, 8, 29, 22, 35, 0).to_s,
              arrival_time: DateTime.new(2012, 10, 11, 22, 32, 0).to_s, departure_area: 'Terminal A1', departure_airport_id: 2)
Flight.create!(destination_airport_id: 5, departure_time: DateTime.new(2012, 8, 29, 22, 35, 0).to_s,
              arrival_time: DateTime.new(2012, 10, 22, 22, 12, 0).to_s, departure_area: 'Terminal A1', departure_airport_id: 5)
Flight.create!(destination_airport_id: 5, departure_time: DateTime.new(2012, 8, 29, 22, 35, 0).to_s,
              arrival_time: DateTime.new(2012, 10, 18, 22, 10, 0).to_s, departure_area: 'Terminal A1', departure_airport_id: 2)
Flight.create!(destination_airport_id: 1, departure_time: DateTime.new(2012, 8, 29, 22, 35, 0).to_s,
              arrival_time: DateTime.new(2012, 10, 10, 22, 36, 0).to_s, departure_area: 'Terminal A1', departure_airport_id: 1)
Flight.create!(destination_airport_id: 1, departure_time: DateTime.new(2012, 8, 29, 22, 35, 0).to_s,
              arrival_time: DateTime.new(2012, 10, 1, 22, 10, 0).to_s, departure_area: 'Terminal A1', departure_airport_id: 2)
for i in 1..5 do

    Flight.create!(destination_airport_id: 1, departure_time: DateTime.new(2012, 8, i, 22, 35, 0).to_s,
    arrival_time: DateTime.new(2012, 10, i, 22, 39, 0).to_s, departure_area: 'Terminal A1', departure_airport_id: i)
end

for i in 1..5 do
    Flight.create!(destination_airport_id: 2, departure_time: DateTime.new(2012, 8, i, 22, 35, 0).to_s,
    arrival_time: DateTime.new(2012, 10, i, 22, 39, 0).to_s, departure_area: 'Terminal A1', departure_airport_id: i)
end

for i in 1..5 do
    Flight.create!(destination_airport_id: 3, departure_time: DateTime.new(2012, 8, i, 22, 35, 0).to_s,
    arrival_time: DateTime.new(2012, 10, i, 22, 39, 0).to_s, departure_area: 'Terminal A1', departure_airport_id: i)
end

for i in 1..5 do
    Flight.create!(destination_airport_id: 4, departure_time: DateTime.new(2012, 8, i, 22, 35, 0).to_s,
    arrival_time: DateTime.new(2012, 10, i, 22, 39, 0).to_s, departure_area: 'Terminal A1', departure_airport_id: i)
end

for i in 1..5 do
    Flight.create!(destination_airport_id: 5, departure_time: DateTime.new(2012, 8, i, 22, 35, 0).to_s,
    arrival_time: DateTime.new(2012, 10, i, 22, 39, 0).to_s, departure_area: 'Terminal A1', departure_airport_id: i)   
end

Booking.create!(:flight_id => 2, :status => "valid")
Passenger.create!(:name => "testuser", :age => 55, :email => "testuser@gmail.com", :booking_id => 1)