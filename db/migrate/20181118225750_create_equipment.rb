class CreateEquipment < ActiveRecord::Migration[5.2]
  def change
    create_table :equipment do |t|
      t.string :code
      t.string :description
      t.integer :wear_state, default: 0
      t.integer :quantity, default: 1

      t.timestamps
    end
  end
end
