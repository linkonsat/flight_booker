# frozen_string_literal: true

class FlightsController < ApplicationController
  def index
    if params.key?(:departure_id)
      @passenger_count = params[:quantity]
      @validated_flights = Flight.valid_flights(params)
    end
  end

  def find_flight   
    if(!params[:passenger_email].nil?)
    found_flight = Flight.find_flight(params)
    flight_details = found_flight.first.flight_info
    flight = flight_details.to_json
    response.headers["flight"] = "#{flight}"
    end
  end

  def valid_flights_params; end
end
