class CreateMenuItems < ActiveRecord::Migration[5.2]
  def change
    create_table :menu_items do |t|
      t.string :name
      t.string :url
      t.references :menu, index: true

      t.timestamps
    end
  end
end
