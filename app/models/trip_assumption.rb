class TripAssumption < ApplicationRecord
  belongs_to :trip_plan

  validates :assumption, :variability, :impact, presence: true

end
