class CreateMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :members do |t|
      t.references :trip_plan, foreign_key: true
      t.string :name
      t.string :phone
      t.string :contact_name
      t.string :contact_phone

      t.timestamps
    end
  end
end
