class CreateMountainZones < ActiveRecord::Migration[5.2]
  def change
    create_table :mountain_zones do |t|
      t.string :name

      t.timestamps
    end
    add_index :mountain_zones, :name, unique: true
  end
end
