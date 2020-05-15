class CreateSlides < ActiveRecord::Migration[5.2]
  def change
    create_table :slides do |t|
      t.string :name
      t.string :caption
      t.integer :position, default: 0
      t.string :media_url
      t.integer :media_type, default: 0

      t.timestamps
    end
  end
end
