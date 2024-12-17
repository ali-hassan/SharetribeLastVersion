class AddIndexesOrderPermissionsAndBillingAgreements < ActiveRecord::Migration[6.1]
  def change
    add_index :order_permissions, :paypal_account_id
    add_index :billing_agreements, :paypal_account_id
  end
end
