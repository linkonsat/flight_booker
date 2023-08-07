# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Booking, type: :model do
    it "Returns nil if wrong promo code present." do 
        booking = create(:booking)
        promotion = create(:promo_code)
        valid_discount = Booking.discounted_flight("12345")
        expect(valid_discount).to eql(nil)
    end
    it "Returns nil if no promo code exists" do 
        booking = create(:booking)
        valid_discount = Booking.discounted_flight("123456")
        expect(valid_discount).to eql(nil)
    end

    it "Returns nil if the promo code has expired past 7 days." do 
        booking = create(:booking)
        create(:promo_code, created_at: DateTime.new(2001,2,3.5))
        expect(Booking.discounted_flight("123456")).to eql(nil)
    end 

    it "Returns the booking if a valid promo code exists." do 
        booking = create(:booking)
        promo_code = create(:promo_code)
        expect(Booking.discounted_flight("ABCDEF")).to eql(booking)
    end
end
