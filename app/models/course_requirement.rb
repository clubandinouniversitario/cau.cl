class CourseRequirement < ApplicationRecord
  belongs_to :course
  belongs_to :required_course, class_name: 'Course'
end
