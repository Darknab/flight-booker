class Passenger < ApplicationRecord
    has_many :trips
    has_many :bookings, thought: :trips
end
