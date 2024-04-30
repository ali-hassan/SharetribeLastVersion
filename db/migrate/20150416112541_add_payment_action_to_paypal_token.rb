class AddPaymentActionToPaypalToken < ActiveRecord::Migration[6.1]
  def change
    add_column :paypal_tokens, :payment_action, :string, limit: 32, after: :transaction_id, null: true
  end
end
