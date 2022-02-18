class PassengerMailer < ApplicationMailer
    def booking_confirmation
        @flight = params[:flight]
        @emails = params[:emails]
        @emails.each do |email|
                mail(to: email, subject: 'Booking confirmation')
        end

      end
    
end
