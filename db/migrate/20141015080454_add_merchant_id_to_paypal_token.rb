class AddMerchantIdToPaypalToken < ActiveRecord::Migration[6.1]
  def change
    add_column :paypal_tokens, :merchant_id, :string, null: false, after: :transaction_id
  end
end
