class Lesson < ApplicationRecord
  belongs_to :course

  enum lesson_type: [:theory, :terrain]

  validates :lesson_type, :start_date, :end_date, presence: true

end
