class CreateMedicalRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :medical_records do |t|
      t.string :blood_type
      t.string :health_insurance
      t.string :prefered_medical_center
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
