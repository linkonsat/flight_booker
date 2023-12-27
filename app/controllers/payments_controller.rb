class PaymentsController < ApplicationController
    def new 
        @booking = Booking.find(params[:booking_id])
    end

    def create
        
        redirect_to '/'
        customer = Stripe::Customer.create({
            :email => params[:stripeEmail],
            :source => params[:stripeToken]
        })
        
        charge = Stripe::Charge.create({
            :customer => customer.id,
            :amount => 500,
            :description => 'Flight ticket(not real flight)',
            :currency => 'usd'
        })

    rescue Stripe::CardError => e
        flash[:error] = e.message 
        redirect_to new_payment_path
    end
end