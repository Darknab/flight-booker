class Booking < ApplicationRecord
  belongs_to :flight
  has_many :trips
  has_many :passengers, through: :trips
end
