class User < ApplicationRecord
  rolify
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable

  has_many :emergency_contacts, as: :contactable
  has_many :attendances, dependent: :destroy
  has_many :lessons, through: :attendances
  has_many :course_inscriptions, dependent: :destroy
  has_many :courses, through: :course_inscriptions
  has_many :course_professors, dependent: :destroy
  has_many :taught_courses, through: :course_professors, source: :course
  has_many :equipment_loans, dependent: :destroy
  has_many :loaned_equipments, through: :equipment_loans, source: :equipment
  has_many :blog_posts, dependent: :destroy
  has_one :medical_record, dependent: :destroy
  has_many :medical_conditions, through: :medical_record
  has_one :payments, dependent: :destroy
  has_one :books, dependent: :destroy
  has_one :news_posts, dependent: :destroy
  has_one :trips, dependent: :destroy

  validates :name, presence: true
end
