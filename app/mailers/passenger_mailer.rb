class PassengerMailer < ApplicationMailer
  def confirmation_mail
    @booking = params[:booking]
    @passengers = @booking.passengers
    
    @passenger.each do |passenger|
      mail(to:passenger.email, subject: 'Booking complete!')
    end
  end
end
