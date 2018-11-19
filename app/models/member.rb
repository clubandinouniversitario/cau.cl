class Member < ApplicationRecord
  belongs_to :trip_plan

  validates :name, :phone, :contact_name, :contact_phone, presence: true

end
