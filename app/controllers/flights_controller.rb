class FlightsController < ApplicationController
  def search
    @flights = Flight.where('departure_airport_id = ? AND arrival_airport_id = ?
      AND start_datetime >= ? AND start_datetime <= ?',
      params[:departure_airport], params[:arrival_airport], 
      params[:from_date], params[:to_date])
      redirect_to flights_path(departure_airport: params[:departure_airport], 
        arrival_airport: params[:arrival_airport], 
        from_date: params[:from_date], 
        to_date: params[:to_date])
  end

  def index
    if params[:departure_airport].present? && params[:arrival_airport].present? && params[:from_date].present? && params[:to_date].present?
      @flights = Flight.where('departure_airport_id = ? AND arrival_airport_id = ? AND start_datetime >= ? AND start_datetime <= ?',
                              params[:departure_airport], params[:arrival_airport], params[:from_date], params[:to_date])
    
    end
  end
  

end
