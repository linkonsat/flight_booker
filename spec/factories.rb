# frozen_string_literal: true

FactoryBot.define do
  factory :airport do
    code { 'LAX' }
    id { 1 }
  end

  factory :flight do 
    id { 1 }
    destination_airport_id { 2 }
    departure_time { "2012-08-29T22:35:00+00:00" }
    arrival_time { "2012-10-29T22:39:00+00:00" }
    departure_area { "Terminal A1" }
    departure_airport_id { 1 }
  end
end
