class FlightsController < ApplicationController
    def index 
        #debugger
        if(params.has_key?(:departure_id))
        @passenger_count = params[:quantity]
        @validated_flights = Flight.valid_flights(params)
        end
  end

    def valid_flights_params 
    end
end
