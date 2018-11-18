class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :name
      t.text :description
      t.integer :seats
      t.integer :branch
      t.boolean :active, default: false
      t.decimal :student_price
      t.decimal :adult_price
      t.boolean :open_inscriptions, default: false

      t.timestamps
    end
  end
end
