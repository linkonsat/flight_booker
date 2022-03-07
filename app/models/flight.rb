# frozen_string_literal: true

class Flight < ApplicationRecord
  has_many :bookings
  belongs_to :destination_airport, class_name: 'Airport'
  belongs_to :departure_airport, class_name: 'Airport'
  scope :unique_flight_days, -> { Flight.select(:departure_time).distinct }
  def arrival_day
    all_flights = Flight.all
    flight = Flight.where('departure_time = ?', departure_time).distinct
    flight_day = flight.first.arrival_time.to_datetime.strftime('%y-%m-%d')
    flight_day.to_s
  end

  def self.valid_flights(params)
    flight_day = Flight.find(params[:flight_id]).departure_time.to_datetime.strftime('%y-%m-%d')
    found_flight_paths = Flight.where('departure_airport_id = ?', params[:departure_id]).where(
      'destination_airport_id = ?', params[:destination_id]
    )

    flights = found_flight_paths.where('departure_time LIKE ?', "%#{flight_day}%")
  end
end
