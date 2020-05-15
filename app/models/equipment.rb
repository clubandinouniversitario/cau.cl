class Equipment < ApplicationRecord
  has_many :equipment_loans, dependent: :destroy
  has_many :users, through: :equipment_loans

  enum wear_state: [:used, :brand_new, :worn_out]

  validates :code, :description, :quantity, presence: true, uniqueness: true

end
