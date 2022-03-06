class FlightsController < ApplicationController
    def index 
        if(params.has_key?(:departure_id))
        @passenger_count = params[:quantity]
        @validated_flights = Flight.valid_flights(params)
        end
  end

  def find_flight

  end

    def valid_flights_params 
    end
end
