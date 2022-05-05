class PromoCodesController < ApplicationController 
    def new 
        @promo_code = PromoCode.new 
    end

    def create
        @promo_code = PromoCode.new 
        @promo_code.save!
    end
end