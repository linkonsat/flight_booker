# frozen_string_literal: true

class AddFlights < ActiveRecord::Migration[7.0]
  def change
    create_table :flights do |t|
      t.bigint :destination_airport_id
      t.string :departure_time
      t.string :arrival_time
      t.string :departure_area
      t.bigint :departure_airport_id
    end
  end
end
