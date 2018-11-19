class CreateTrips < ActiveRecord::Migration[5.2]
  def change
    create_table :trips do |t|
      t.references :user, foreign_key: true
      t.string :title
      t.datetime :trip_date
      t.text :content
      t.decimal :latitude
      t.decimal :longitude

      t.timestamps
    end
  end
end
