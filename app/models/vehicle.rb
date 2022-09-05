class Vehicle < ApplicationRecord

    has_many :trips, dependent: :destroy

    validates :vehicle_number, presence: true
    validates :vehicle_type, presence: true
    validates :vehicle_model, presence: true
    validates :vehicle_color, presence: true
end
