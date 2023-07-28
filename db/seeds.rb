
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
               arrival_time: DateTime.new(2023, 10, 29, 22, 39, 0).to_s, departure_area: 'Terminal A1', departure_airport_id: 2)
Flight.create!(destination_airport_id: 3, departure_time: DateTime.new(2012, 8, 29, 22, 35, 0).to_s,
               arrival_time: DateTime.new(2023, 10, 29, 22, 45, 0).to_s, departure_area: 'Terminal A1', departure_airport_id: 4)
Flight.create!(destination_airport_id: 2, departure_time: DateTime.new(2012, 8, 29, 22, 35, 0).to_s,
               arrival_time: DateTime.new(2023, 10, 29, 22, 55, 0).to_s, departure_area: 'Terminal A1', departure_airport_id: 3)
Flight.create!(destination_airport_id: 2, departure_time: DateTime.new(2012, 8, 29, 22, 35, 0).to_s,
               arrival_time: DateTime.new(2023, 10, 29, 22, 55, 0).to_s, departure_area: 'Terminal A1', departure_airport_id: 3)

Airline.create!(:name => "wild air")
Airline.create!(:name => "spirit sky")
Airline.create!(:name => "Free Lines")
Airline.create!(:name => "Busy Skies")
Ticket.create!(:price => 105, :airline_id => 1, :flight_id => 1)
Ticket.create!(:price => rand(150), :airline_id => 1, :flight_id => 1)
Ticket.create!(:price => rand(150), :airline_id => 1, :flight_id => 1)
Ticket.create!(:price => rand(150), :airline_id => 2, :flight_id => 1)
Ticket.create!(:price => rand(150), :airline_id => 2, :flight_id => 1)
Ticket.create!(:price => rand(150), :airline_id => 3, :flight_id => 1)
Ticket.create!(:price => rand(150), :airline_id => 3, :flight_id => 2)
Ticket.create!(:price => rand(150), :airline_id => 3, :flight_id => 2)
Ticket.create!(:price => rand(150), :airline_id => 4, :flight_id => 2)
Ticket.create!(:price => rand(150), :airline_id => 4, :flight_id => 2)
Ticket.create!(:price => rand(150), :airline_id => 4, :flight_id => 3)
Ticket.create!(:price => rand(150), :airline_id => 3, :flight_id => 3)
Ticket.create!(:price => rand(150), :airline_id => 3, :flight_id => 3)
Ticket.create!(:price => rand(150), :airline_id => 4, :flight_id => 3)
Ticket.create!(:price => rand(150), :airline_id => 4, :flight_id => 3)
Ticket.create!(:price => rand(150), :airline_id => 4, :flight_id => 3)
Ticket.create!(:price => rand(150), :airline_id => 3, :flight_id => 4)
Ticket.create!(:price => rand(150), :airline_id => 3, :flight_id => 4)
Ticket.create!(:price => rand(150), :airline_id => 4, :flight_id => 4)
Ticket.create!(:price => rand(150), :airline_id => 4, :flight_id => 4)
Ticket.create!(:price => rand(150), :airline_id => 4, :flight_id => 4)
