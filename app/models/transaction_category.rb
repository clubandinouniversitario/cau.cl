class TransactionCategory < ApplicationRecord
  has_many :account_transactions, dependent: :restrict_with_error

  validates :name, presence: true
end
