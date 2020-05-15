class Response < ApplicationRecord
  belongs_to :trip_plan

  validates :danger, :risk, :response, presence: true

end
