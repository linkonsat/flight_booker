# frozen_string_literal: true

class Passenger < ApplicationRecord
  belongs_to :booking
  scope :find_flight, ->(email) { Passenger.where('email = ?', email) }
end
