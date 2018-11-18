class AssumptionCategory < ApplicationRecord
  has_many :assumptions, dependent: :restrict_with_error
  
  validates :name, presence: true
end
