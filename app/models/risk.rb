class Risk < ApplicationRecord

  validates :name, presence: true, uniqueness: true

end
