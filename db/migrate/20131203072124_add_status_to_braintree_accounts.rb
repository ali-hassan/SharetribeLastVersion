class AddStatusToBraintreeAccounts < ActiveRecord::Migration[6.1]
  def change
    add_column :braintree_accounts, :status, :string
  end
end
