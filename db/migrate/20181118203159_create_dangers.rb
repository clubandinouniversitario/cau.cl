class CreateDangers < ActiveRecord::Migration[5.2]
  def change
    create_table :dangers do |t|
      t.string :name

      t.timestamps
    end
    add_index :dangers, :name, unique: true
  end
end
