class BookingsController < ApplicationController
  def new
    @flight = Flight.find(params[:flight_id])
    tickets = Integer(params[:tickets])
    @booking = @flight.bookings.build
    tickets.times do
      trip = @booking.trips.build
      passenger = Passenger.find_or_initialize_by(name: "default", email: "default@example.com")
      trip.passenger = passenger
    end
  end

  def create
    @flight = Flight.find(params[:flight_id])
    @booking = @flight.bookings.build(booking_params)
    if @booking.save
      redirect_to @booking
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  private
  def booking_params
    params.require(:booking).permit(:flight_id, trips_attributes: [:id, passenger_attributes: [:id, :name, :email]])
  end

end
