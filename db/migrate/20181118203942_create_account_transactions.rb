class CreateAccountTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :account_transactions do |t|
      t.datetime :transaction_date
      t.string :entity
      t.decimal :amount
      t.string :description
      t.integer :transaction_type, default: 0
      t.references :transaction_category, foreign_key: true

      t.timestamps
    end
  end
end
