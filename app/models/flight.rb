# frozen_string_literal: true

class Flight < ApplicationRecord
  has_many :bookings
  has_many :tickets
  belongs_to :destination_airport, class_name: 'Airport'
  belongs_to :departure_airport, class_name: 'Airport'
  scope :unique_flight_days, -> { Flight.select(:departure_time).distinct }
  def departure_times
    departure_time.to_datetime.strftime('%r')
  end

  def arrival_times
    arrival_time.to_datetime.strftime('%r')
  end

  def departure_days
    departure_time.to_datetime.strftime('%y-%m-%d')
  end   

  def flight_info
    flight_info = { id: id, departure_airport: departure_airport.code,
                    destination_airport: destination_airport.code, departure_time: departure_times,
                    arrival_time: arrival_times }
  end

  def self.find_flight(params)
    flight = Flight.where('id = ?', params[:flight_id])
    flight.first.bookings.each do |flight_bookings|
      flight_bookings.passengers.each do |passenger|
        return flight if passenger.email == params[:passenger_email]
      end
    end
    []
  end

  def self.valid_flights(params)
    found_flight_paths = Flight.where('departure_airport_id = ?', params[:departure_airport_id]).where(
      'destination_airport_id = ?', params[:destination_airport_id]
    )
    flight_day = params[:arrival_time].to_datetime
    flights = found_flight_paths.where(arrival_time: (flight_day.midnight)..flight_day.end_of_day)
  end
end
