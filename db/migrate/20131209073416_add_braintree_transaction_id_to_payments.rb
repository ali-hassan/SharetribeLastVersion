class AddBraintreeTransactionIdToPayments < ActiveRecord::Migration[6.1]
  def change
    add_column :payments, :braintree_transaction_id, :string
  end
end
