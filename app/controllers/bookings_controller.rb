class BookingsController < ApplicationController
  def new
    @flight = Flight.find(params[:flight_id])
    @tickets = params[:tickets]
    @booking = @flight.bookings.new
  end

  def create
    @flight = Flight.find(params[:flight_id])
    @booking = @flight.bookings.save(booking_params)
  end

  def show
  end

  private
  def booking_params
  end
end
