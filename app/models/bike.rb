class Bike < ApplicationRecord
  belongs_to :user
  has_many :telemetries
end
