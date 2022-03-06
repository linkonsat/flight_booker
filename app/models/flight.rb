class Flight < ApplicationRecord
  has_many :bookings
  belongs_to :destination_airport, class_name: 'Airport'
  belongs_to :departure_airport, class_name: 'Airport'

  # scope :flight_arrival_days, -> { Flight.all.each { |flight| flight.arrival_time.to_datetime.strftime("%d") } }
  def arrival_day
    flight = Flight.where('id = ?', id)
    flight_day = flight.first.arrival_time.to_datetime.strftime('%y-%m-%d')
    flight_day.to_s
  end

  def self.valid_flights(params)
    # debugger
    flight_day = Flight.find(params[:flight_id]).departure_time.to_datetime.strftime('%y-%m-%d')
    found_flight_paths = Flight.where('departure_airport_id = ?', params[:departure_id]).where(
      'destination_airport_id = ?', params[:destination_id]
    )

    flights = found_flight_paths.where('departure_time LIKE ?', "%#{flight_day}%")
    # debugger
  end
end
