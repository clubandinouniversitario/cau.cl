class MedicalCondition < ApplicationRecord
  belongs_to :medical_record

  validates :condition, :precaution, presence: true

end
