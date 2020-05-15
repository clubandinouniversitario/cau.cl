class CreatePages < ActiveRecord::Migration[5.2]
  def change
    create_table :pages do |t|
      t.text :content
      t.string :url
      t.boolean :active, default: true
      t.boolean :deletable, default: true
      t.string :title

      t.timestamps
    end
  end
end
