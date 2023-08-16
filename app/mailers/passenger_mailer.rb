class PassengerMailer < ApplicationMailer
  def confirmation_mail
    @flight = params[:flight]
    @passenger = params[:passenger]
    @booking = params[:booking]

    mail(to:@passenger.email, subject: 'Booking complete!')
  end
end
