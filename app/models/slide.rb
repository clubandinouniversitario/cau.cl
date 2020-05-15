class Slide < ApplicationRecord

  has_one_attached :media_file

  enum media_type: [:image, :video]

  validates :name, :position, :media_type, presence: true

end
