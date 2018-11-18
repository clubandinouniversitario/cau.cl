class CreateNewsPosts < ActiveRecord::Migration[5.2]
  def change
    create_table :news_posts do |t|
      t.references :user, foreign_key: true
      t.string :title
      t.text :description
      t.datetime :event_date
      t.boolean :active

      t.timestamps
    end
  end
end
