class CreateCourseRequirements < ActiveRecord::Migration[5.2]
  def change
    create_table :course_requirements do |t|
      t.integer :course_id
      t.integer :required_course_id

      t.timestamps
    end
  end
end
