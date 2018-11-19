class CreateTripAssumptions < ActiveRecord::Migration[5.2]
  def change
    create_table :trip_assumptions do |t|
      t.references :trip_plan, foreign_key: true
      t.string :assumption
      t.integer :variability
      t.integer :impact

      t.timestamps
    end
  end
end
