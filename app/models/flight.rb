class Flight < ApplicationRecord
    has_many :bookings
    belongs_to :destination_airport, foreign_key: :destination_airport_id, class_name: "Airport"
    belongs_to :departure_airport, foreign_key: :departure_airport_id, class_name: "Airport"

    #scope :flight_arrival_days, -> { Flight.all.each { |flight| flight.arrival_time.to_datetime.strftime("%d") } } 
    def arrival_day 
        flight = Flight.where("id = ?", id)
        flight_day = flight.first.arrival_time.to_datetime.strftime("%d") 
        "#{flight_day}"
    end
end
