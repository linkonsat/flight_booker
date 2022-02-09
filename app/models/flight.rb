class Flight < ApplicationRecord
    has_many :bookings
    belongs_to :destination_airport, foreign_key: :destination_airport_id, class_name: "Airport"
    belongs_to :departure_airport, foreign_key: :departure_airport_id, class_name: "Airport"
end
