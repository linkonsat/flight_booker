class FlightsController < ApplicationController
    def index 
       # debugger
        if(params.has_key?(:departure_id))
        @validated_flights = Flight.valid_flights(params)
       # debugger
        else 
            @validated_flights = []
        end
  end

    def valid_flights_params 
    end
end
