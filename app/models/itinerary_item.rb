class ItineraryItem < ApplicationRecord
  belongs_to :trip_plan

  validates :day, :activity, :start_time, :end_time, presence: true

end
