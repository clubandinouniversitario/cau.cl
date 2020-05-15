class CreateMerchandises < ActiveRecord::Migration[5.2]
  def change
    create_table :merchandises do |t|
      t.string :name
      t.integer :status, default: 0
      t.integer :quantity, default: 1
      t.decimal :price
      t.text :description

      t.timestamps
    end
  end
end
