class AddReceiverIdToPaypalTokens < ActiveRecord::Migration[6.1]
  def change
    add_column :paypal_tokens, :receiver_id, :string, after: :merchant_id, null: false
  end
end
