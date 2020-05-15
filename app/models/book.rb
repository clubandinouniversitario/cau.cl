class Book < ApplicationRecord

  enum lecture_type: [:manual, :biography, :literature]
  enum book_type: [:digital, :paper]

  validates :title, :author, :lecture_type, :book_type, presence: true
  validates :link, presence: true, if: proc { |item| item.digital? }
end
