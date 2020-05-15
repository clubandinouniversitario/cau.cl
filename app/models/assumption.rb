class Assumption < ApplicationRecord
  belongs_to :assumption_category

  validates :name, presence: true, uniqueness: true

end
