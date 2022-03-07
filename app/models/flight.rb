# frozen_string_literal: true

class Flight < ApplicationRecord
  has_many :bookings
  belongs_to :destination_airport, class_name: 'Airport'
  belongs_to :departure_airport, class_name: 'Airport'
  scope :unique_flight_days, -> { Flight.select(:departure_time).distinct }
  def departure_times
    departure_time.to_datetime.strftime('%r')
  end

  def departure_days
    departure_time.to_datetime.strftime('%y-%m-%d')
  end

  def self.valid_flights(params)
    found_flight_paths = Flight.where('departure_airport_id = ?', params[:departure_id]).where(
      'destination_airport_id = ?', params[:destination_id]
    )
    flight_day = params[:departure_time].to_datetime.strftime('%y-%m-%d')
    flights = found_flight_paths.where('departure_time LIKE ?', "%#{flight_day}%")
  end
end
