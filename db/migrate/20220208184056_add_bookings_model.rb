# frozen_string_literal: true

class AddBookingsModel < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.integer :passenger_id
      t.integer :flight_id
      t.string :status
      t.string :name
      t.string :email
    end
  end
end
