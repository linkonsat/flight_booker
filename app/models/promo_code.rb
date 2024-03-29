class PromoCode < ApplicationRecord
    belongs_to :booking
    attribute :value_off, :integer, default: -> { self.random_discount }
    attribute :code, :string, default: -> { self.generate_promo_code }
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
    discount = [20,25,50]
    return discount[rand(3)] 
    end

    def recently_used
        if(!Booking.discounted_flight(self.code).nil?)
            errors.add(:already_used, "This discount value has already been used recently!")
        end

    end

    scope :find_code, ->(code) { where('code = ?', code) }

  def self.generate_promo_code 
    promo_code = ""
    6.times do 
        char_number = rand(25) + 97
        promo_code << char_number.chr
    end
    if (PromoCode.find_code(promo_code).empty?)
        return promo_code 
    else
        self.generate_promo_code 
    end 
  end 

end