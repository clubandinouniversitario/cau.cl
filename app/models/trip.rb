class Trip < ApplicationRecord
  belongs_to :user

  validates :title, :trip_date, presence: true
end
