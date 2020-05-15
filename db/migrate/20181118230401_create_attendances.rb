class CreateAttendances < ActiveRecord::Migration[5.2]
  def change
    create_table :attendances do |t|
      t.references :course, foreign_key: true
      t.references :user, foreign_key: true
      t.boolean :attended, default: false

      t.timestamps
    end
  end
end
