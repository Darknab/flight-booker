class Booking < ApplicationRecord
  belongs_to :flight
  has_many :trips
  has_many :passengers, through: :trips, inverse_of: :bookings

  accepts_nested_attributes_for :trips
end
