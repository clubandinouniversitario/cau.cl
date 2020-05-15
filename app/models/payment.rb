class Payment < ApplicationRecord
  belongs_to :user

  enum product_type: [:membership, :training, :courses, :merchandise, :feach]
  enum payment_method: [:debit, :credit, :deposit]
  enum status: [:pending, :rejected, :reversed, :paid]
  enum payment_type: [:digital, :paper]


  validates :payment_type, :payment_method, :product_type, :status, :transaction_id, :amount, presence: true

end
