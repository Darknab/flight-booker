class Trip < ApplicationRecord
  belongs_to :booking
  belongs_to :passenger
end
