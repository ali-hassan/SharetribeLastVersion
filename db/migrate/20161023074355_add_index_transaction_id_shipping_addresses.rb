class AddIndexTransactionIdShippingAddresses < ActiveRecord::Migration[6.1][6.1]
  def change
  	add_index :shipping_addresses, [:transaction_id]
  end
end
