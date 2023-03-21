# frozen_string_literal: true

FactoryBot.define do
  factory :ticket do
    
  end

  factory :airline do
    
  end

  factory :airport do
    code { 'LAX' }
  end

  factory :flight do 
    destination_airport_id { Airport.last.id }
    departure_time { "2012-08-29T22:35:00+00:00" }
    arrival_time { "2012-10-29T22:39:00+00:00" }
    departure_area { "Terminal A1" }
    departure_airport_id { Airport.first.id }
  end

  factory :promo_code do 
    booking_id { Booking.last.id }
  end

  factory :booking do 
    flight_id { Flight.last.id }
  end

  factory :user do 
      password { "123456" }
  end
end
