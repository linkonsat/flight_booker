# frozen_string_literal: true

class Booking < ApplicationRecord
  has_many :passengers
  belongs_to :flight
  has_one :promo_code
  accepts_nested_attributes_for :passengers
  scope :same_bookings, ->(email) { Booking.where("email = ?",email) }

  def self.discounted_flight(code)
    bookings = Booking.includes(:promo_code)
    bookings.each do |booking|
      if(!booking.promo_code.nil? && booking.promo_code.code == code && booking.promo_code.created_at >= DateTime.now - 7)
        debugger
        return booking 
      end
    end
    return nil
  end
end
