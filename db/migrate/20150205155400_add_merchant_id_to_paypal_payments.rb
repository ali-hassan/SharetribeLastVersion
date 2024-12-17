class AddMerchantIdToPaypalPayments < ActiveRecord::Migration[6.1]
  def change
    add_column :paypal_payments, :merchant_id, :string, after: :receiver_id
  end
end
