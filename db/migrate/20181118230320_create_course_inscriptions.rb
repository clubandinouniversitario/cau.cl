class CreateCourseInscriptions < ActiveRecord::Migration[5.2]
  def change
    create_table :course_inscriptions do |t|
      t.boolean :approved, default: false
      t.references :course, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
