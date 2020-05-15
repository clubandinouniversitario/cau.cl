class CreateEmergencyContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :emergency_contacts do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.integer :contactable_id
      t.string :contactable_type

      t.timestamps
    end
    add_index :emergency_contacts, [:contactable_type, :contactable_id]
  end
end
