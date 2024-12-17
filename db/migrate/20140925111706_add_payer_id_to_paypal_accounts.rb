class AddPayerIdToPaypalAccounts < ActiveRecord::Migration[6.1]
  def change
    add_column :paypal_accounts, :payer_id, :string, after: :email
  end
end
