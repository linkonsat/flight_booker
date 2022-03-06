# frozen_string_literal: true

class AddForeignKeys < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :bookings, :flights
    add_foreign_key :bookings, :passengers
  end
end
