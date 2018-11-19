class Merchandise < ApplicationRecord

  has_one_attached :image

  enum status: [:algo]

  validates :name, :quantity, :price, presence: true

end
