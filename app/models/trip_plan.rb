class TripPlan < ApplicationRecord

  has_one :cau_contact, class_name: 'Member', dependent: :destroy
  has_many :members, dependent: :destroy
  has_many :emergency_contacts, as: :contactable
  has_many :responses, dependent: :destroy
  has_many :conveyances, dependent: :destroy
  has_many :trip_assumptions, dependent: :destroy
  has_many :itinerary_items, dependent: :destroy

  has_many_attached :trip_notices

  enum status: [:incompleted, :completed, :sent]

  validates :zone, :route_name, :return_date, :zone_experience, :objective, presence: true
  validates :fuel_q, if: proc { |item| item.fuel? }
  validates :inreach_id, if: proc { |item| item.inreach? }
  validates :water_q, if: proc { |item| item.water? }
  validates :extra_food_q, if: proc { |item| item.extra_food? }
  validates :handy_frecuency, if: proc { |item| item.handy? }
end
