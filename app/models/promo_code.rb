class PromoCode < ApplicationRecord
    belongs_to :booking
    attribute :value_off, :integer, default: -> { self.random_discount }
    attribute :code, :string, default: "ab7tho"
    validate :accepted_value_off
    validate :recently_used
    validates :code, length: { is: 6, wrong_length: "Character count must be 6" }

    def accepted_value_off
      discounts = [20,25,50]
      if (!discounts.include?(value_off))
        errors.add(:nonexistent_value, "This discount value does not exist")
      end
    end


    def self.random_discount 
    discount = 20
    return discount 
    end

    def recently_used
        if(!Booking.discounted_flight(self.code).nil?)
            errors.add(:already_used, "This discount value has already been used recently!")
        end

    end

end