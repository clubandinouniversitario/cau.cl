class CreateEquipmentLoans < ActiveRecord::Migration[5.2]
  def change
    create_table :equipment_loans do |t|
      t.references :equipment, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
