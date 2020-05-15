class CreateConveyances < ActiveRecord::Migration[5.2]
  def change
    create_table :conveyances do |t|
      t.references :trip_plan, foreign_key: true
      t.string :brand
      t.string :color
      t.string :plate

      t.timestamps
    end
  end
end
