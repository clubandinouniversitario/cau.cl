class CreateRisks < ActiveRecord::Migration[5.2]
  def change
    create_table :risks do |t|
      t.string :name

      t.timestamps
    end
    add_index :risks, :name, unique: true
  end
end
