class CreateLessons < ActiveRecord::Migration[5.2]
  def change
    create_table :lessons do |t|
      t.integer :lesson_type
      t.datetime :start_date
      t.datetime :end_date
      t.references :course, foreign_key: true

      t.timestamps
    end
  end
end
