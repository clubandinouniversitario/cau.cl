class CreateAssumptions < ActiveRecord::Migration[5.2]
  def change
    create_table :assumptions do |t|
      t.string :name
      t.references :assumption_category, foreign_key: true

      t.timestamps
    end
    add_index :assumptions, :name, unique: true
  end
end
