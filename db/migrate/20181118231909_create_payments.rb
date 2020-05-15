class CreatePayments < ActiveRecord::Migration[5.2]
  def change
    create_table :payments do |t|
      t.references :user, foreign_key: true
      t.integer :payment_type
      t.integer :payment_method
      t.integer :product_type
      t.integer :status
      t.string :transaction_id
      t.string :last_four_digits
      t.decimal :amount

      t.timestamps
    end
  end
end
