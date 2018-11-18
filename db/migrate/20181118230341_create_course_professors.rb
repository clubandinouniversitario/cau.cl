class CreateCourseProfessors < ActiveRecord::Migration[5.2]
  def change
    create_table :course_professors do |t|
      t.references :course, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
