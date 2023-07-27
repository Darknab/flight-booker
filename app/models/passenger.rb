class Passenger < ApplicationRecord
    has_many :trips
    has_many :bookings, through: :trips, inverse_of: :passengers
end
