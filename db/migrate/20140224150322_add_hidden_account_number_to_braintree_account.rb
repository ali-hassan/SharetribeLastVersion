class AddHiddenAccountNumberToBraintreeAccount < ActiveRecord::Migration[6.1]
  def change
    add_column :braintree_accounts, :hidden_account_number, :string, :after => :routing_number
  end
end
