class BlogPost < ApplicationRecord
  belongs_to :user
  has_many :blog_tags, dependent: :destroy
  has_many :tags, through: :blog_tags

  has_one_attached :image

  validates :title, :description, presence: true

end
