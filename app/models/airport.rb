class Airport < ApplicationRecord
  has_many :departing_flights, class_name: 'flight', foreign_key: 'departure_airport'
  has_many :arriving_airports, class_name: 'flight', foreign_key: 'arrival_airport'
end
