class MenuItem < ApplicationRecord
  belongs_to :menu, class_name: 'MenuItem'

  has_many :submenus, class_name: 'MenuItem', foreign_key: 'menu_id'

  validates :name, :url, presence: true

end
