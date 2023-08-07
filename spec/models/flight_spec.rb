# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Flight, type: :model do
    it "Should find flights with same arrival day." do 
        create(:flight)
        found_flights = Flight.valid_flights(Flight.first)
        expect(found_flights.first).to eql(Flight.first)
    end
end
