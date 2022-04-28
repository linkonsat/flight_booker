# frozen_string_literal: true

class FlightsController < ApplicationController
  def index
    if params[:departure_id].nil? || params[:departure_time].empty?
    else  
      @passenger_count = params[:quantity]
      @validated_flights = Flight.valid_flights(params)
    end
  end

  def find_flight
  end

  def flight_search 
    found_flight = Flight.find_flight(params)
    flight_details = found_flight.first.flight_info
    flight = flight_details.to_json
    response.headers['flight'] = flight.to_s
  end

  def valid_flights_params 
  end
end
