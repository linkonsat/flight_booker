# frozen_string_literal: true

class FlightsController < ApplicationController
  def index
    if params.key?(:departure_id)
      @passenger_count = params[:quantity]
      @validated_flights = Flight.valid_flights(params)
    end
  end

  def find_flight   
    found_flight = Passenger.find_flight(params[:passenger_email])
  end

  def valid_flights_params; end
end
