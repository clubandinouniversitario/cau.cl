class NewsPost < ApplicationRecord
  belongs_to :user

  has_one_attached :image

  validates :title, :description, presence: true
  
end
