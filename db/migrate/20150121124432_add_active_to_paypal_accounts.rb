class AddActiveToPaypalAccounts < ActiveRecord::Migration[6.1]
  def change
    add_column :paypal_accounts, :active, :boolean, default: false
  end
end
