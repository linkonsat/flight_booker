class BookingsController < ApplicationController

  def new
    #debugger
    if(params.has_key?(:flight_id))
    @flight = Flight.find(params[:flight_id])
    @passenger_count = params[:passengers_num]
    @booking = Booking.new
    @passenger_count.to_i.times { @booking.passengers.build}
    #debugger
    else 
        redirect_to root_url, flash:  "Error. No flight selected. Please select a flight before creating a booking."
    end
  end

  def create
    @booking = Booking.new(valid_booking_params(params))
    if @booking.save
     redirect_to @booking
     @flight = Flight.find(params[:booking][:flight_id])
     @emails = []
     params[:booking][:passengers_attributes].each {|key, value| @emails.push(value[:email]) }
     PassengerMailer.with(flight: @flight, emails: @emails).booking_confirmation.deliver_now
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show 
    @booking = Booking.find(params[:id])
  end

  private 
  def valid_booking_params(params)
    params.require(:booking).permit(:flight_id, passengers_attributes: [:id, :name, :email, :age])
  end
end
