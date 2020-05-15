class CreateMedicalConditions < ActiveRecord::Migration[5.2]
  def change
    create_table :medical_conditions do |t|
      t.references :medical_record, foreign_key: true
      t.string :condition
      t.string :precautions

      t.timestamps
    end
  end
end
