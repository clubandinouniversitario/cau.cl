class CreateItineraryItems < ActiveRecord::Migration[5.2]
  def change
    create_table :itinerary_items do |t|
      t.references :trip_plan, foreign_key: true
      t.datetime :day
      t.string :activity
      t.datetime :start_time
      t.datetime :end_time
      t.decimal :start_altitude
      t.decimal :end_altitude

      t.timestamps
    end
  end
end
