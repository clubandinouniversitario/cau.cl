class CreateTripPlans < ActiveRecord::Migration[5.2]
  def change
    create_table :trip_plans do |t|
      t.integer :status
      t.string :zone
      t.string :route_name
      t.string :route_link
      t.datetime :return_date
      t.text :zone_experience
      t.text :objective
      t.string :comms_device
      t.text :first_aid_knowledge
      t.boolean :gauze
      t.boolean :dressing
      t.boolean :saline_solution
      t.boolean :sport_drink
      t.boolean :gloves
      t.boolean :splint
      t.boolean :slings
      t.boolean :medicine
      t.boolean :patient_record
      t.boolean :water
      t.decimal :water_q
      t.boolean :extra_food
      t.decimal :extra_food_q
      t.boolean :fuel
      t.decimal :fuel_q
      t.boolean :lantern
      t.boolean :spare_batteries
      t.boolean :emergency_blanket
      t.boolean :repair_kit
      t.boolean :first_aid_kit
      t.boolean :sun_protection
      t.boolean :warm_cloth
      t.boolean :gps
      t.boolean :gps_track
      t.boolean :inreach
      t.string :inreach_id
      t.boolean :handy
      t.string :handy_frecuency

      t.timestamps
    end
  end
end
