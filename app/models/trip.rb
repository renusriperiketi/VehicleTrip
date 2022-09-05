class Trip < ApplicationRecord
  belongs_to :vehicle

#   validates :trip_number, presence: true
#   validates :distance, presence: true
#   validates :fuel_consumption, presence: true
end
