require 'rails_helper'

RSpec.describe PromoCode, type: :model do
    it "Generates a random promo code" do 
    2.times do 
      create(:airport)
    end
    create(:flight)
    create(:booking)
    promo_code_one = create(:promo_code)
    promo_code_two = create(:promo_code)
    expect(promo_code_one.code).to_not eql(promo_code_two.code)
    end
    it "Generates the accurate value off." do 
        2.times do 
            create(:airport)
          end
          create(:flight)
          create(:booking)
        promo_code = create(:promo_code)
        debugger
        expect([20,25,50].include?(promo_code.value_off)).to eql(true)
    end

    it "Does not allow a discount that isn't already allowed." do 
        2.times do 
            create(:airport)
          end
        create(:flight)
        create(:booking)
        promo_code = build(:promo_code, value_off: 99)
        expect(promo_code.save).to eql(false)
    end
end
