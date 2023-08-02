# frozen_string_literal: true

class FlightsController < ApplicationController
  def index
    if(ensure_presence(params))
      #debugger
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
  def ensure_presence(params)
   # debugger
    params_array = [params[:destination_airport_id], params[:arrival_time], params[:departure_airport_id]]
    if(params_array.include?(nil))
      return false
    else
      return true
    end
  end

  def valid_flights_params 
  end
end
