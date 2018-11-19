class Conveyance < ApplicationRecord
  belongs_to :trip_plan

  validates :brand, :color, :plate, presence: true

end
