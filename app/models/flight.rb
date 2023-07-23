class Flight < ApplicationRecord
  belongs_to :departure_airport, class_name: 'Airport'
  belongs_to :arrival_airport, class_name: 'Airport'
  has_many :bookings

  def start_datetime_formatted
    start_datetime.strftime("%m/%d/%Y %H:%M")
  end
end
