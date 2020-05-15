class Page < ApplicationRecord

  validates :title, :url, presence: true

end
