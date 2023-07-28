# frozen_string_literal: true

class AddFlights < ActiveRecord::Migration[7.0]
  def change
    create_table :flights do |t|
      t.bigint :destination_airport_id
      t.datetime :departure_time
      t.datetime :arrival_time
      t.string :departure_area
      t.bigint :departure_airport_id
    end
  end
end
