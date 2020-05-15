class CreateResponses < ActiveRecord::Migration[5.2]
  def change
    create_table :responses do |t|
      t.references :trip_plan, foreign_key: true
      t.string :danger
      t.string :risk
      t.string :response

      t.timestamps
    end
  end
end
