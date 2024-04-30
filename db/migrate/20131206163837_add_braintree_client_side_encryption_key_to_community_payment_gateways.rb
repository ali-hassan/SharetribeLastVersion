class AddBraintreeClientSideEncryptionKeyToCommunityPaymentGateways < ActiveRecord::Migration[6.1]
  def change
    add_column :community_payment_gateways, :braintree_client_side_encryption_key, :text, :after => :braintree_private_key
  end
end
