class Course < ApplicationRecord
  has_many :lessons, dependent: :destroy
  has_many :course_requirements, dependent: :destroy
  has_many :required_courses, through: :course_requirements

  has_one_attached :image
  has_one_attached :contents

  enum branch: [:basic, :rock, :ice, :extra]

  validates :name, :seats, :branch, :student_price, :adult_price, presence: true

end
