class AccountTransaction < ApplicationRecord
  belongs_to :transaction_category

  has_one_attached :receipt

  enum transaction_type: [:debit, :credit]

  validates :transaction_date, :entity, :amount, :transaction_type, presence: true
end
