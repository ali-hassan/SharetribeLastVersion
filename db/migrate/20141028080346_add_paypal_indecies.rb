class AddPaypalIndecies < ActiveRecord::Migration[6.1]
  def change
    add_index :paypal_tokens, :community_id
    add_index :paypal_tokens, :transaction_id
  end
end
