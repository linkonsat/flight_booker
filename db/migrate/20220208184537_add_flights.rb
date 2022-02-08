class AddFlights < ActiveRecord::Migration[7.0]
  def change
    create_table :flights do |t|
      t.string :destination_airport
      t.string :departure_time
      t.string :arrival_time
      t.string :departure_area
      t.string :departure_airport
    end
  end
end
