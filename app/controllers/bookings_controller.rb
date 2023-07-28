# frozen_string_literal: true

class BookingsController < ApplicationController
  def new
    if params.key?(:flight_id) && check_tickets(params)
      @booking = Booking.new
      @flight = Flight.find(params[:flight_id])
      @passenger_count = params[:passengers_num]
      @passenger_count.to_i.times { @booking.passengers.build }
    else
      redirect_to root_url, flash: 'Error. No flight selected. Please select a flight before creating a booking.'
    end
  end

  def create
    booking_params = valid_booking_params(params)
    @booking = Booking.new(booking_params)
    if @booking.save!
      if(params[:booking][:discount] == "yes")
        @promo_code = PromoCode.new(:booking_id => @booking.id) 
        @promo_code.save! 
      end
      redirect_to @booking
      @flight = Flight.find(params[:booking][:flight_id])
      @emails = []
      params[:booking][:passengers_attributes].each { |_key, value| @emails.push(value[:email]) }
      PassengerMailer.with(flight: @flight, emails: @emails).booking_confirmation.deliver_now
    else
      render :new, status: :unprocessable_entity
    end
  end

  def check_tickets(params)
    valid_tickets = Ticket.where("price = ?",params[:price])
    if(valid_ticket.where("flight_id =?", params[:flight_id]).empty?)
      redirect_to root_url, flash: 'Error. This ticket is not included with this flight.'
    else 
      return true
    end
  end


  def show
    @booking = Booking.find(params[:id])
  end

  private

  def valid_booking_params(params)
    params.require(:booking).permit(:flight_id, passengers_attributes: %i[id name email age])
  end
end
