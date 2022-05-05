# frozen_string_literal: true

class AddAirportForeignKeys < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :flights, :airports, column: :destination_airport_id, primary_key: 'id'
    add_foreign_key :flights, :airports, column: :departure_airport_id, primary_key: 'id'
  end
end
