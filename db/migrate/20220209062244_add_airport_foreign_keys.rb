class AddAirportForeignKeys < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :flights, :airports, column: :destination_airport_id, primary_key: "id"
    add_foreign_key :flights, :airports, column: :departure_airport_id, primary_key: "id"
  end
end

#:departing_flights_id
#:arriving_flights_id
#:destination_airport_id
#:departure_airport_id