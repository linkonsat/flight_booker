# frozen_string_literal: true

class Flight < ApplicationRecord
  has_many :bookings
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
  
    flight_info = {:id => self.id, :departure_airport => self.departure_airport.code,
    :destination_airport => self.destination_airport.code, :departure_time => self.departure_times,
    :arrival_time => self.arrival_times}
  end

  def self.find_flight(params)
    flight = Flight.where("id = ?", params[:flight_id])
    flight.first.bookings.each do |flight_bookings|
      flight_bookings.passengers.each do |passenger|
        if(passenger.email == params[:passenger_email])
          return flight 
        end
      end
    end
    return []
  end

  def self.valid_flights(params)
    found_flight_paths = Flight.where('departure_airport_id = ?', params[:departure_id]).where(
      'destination_airport_id = ?', params[:destination_id]
    )
    flight_day = params[:departure_time].to_datetime.strftime('%y-%m-%d')
    flights = found_flight_paths.where('departure_time LIKE ?', "%#{flight_day}%")
  end
end
