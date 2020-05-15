class MedicalRecord < ApplicationRecord
  belongs_to :user
  has_many :medical_conditions, dependent: :destroy

  validates :blood_type, :health_insurance, presence: true
end
