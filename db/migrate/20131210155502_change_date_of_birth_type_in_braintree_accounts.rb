class ChangeDateOfBirthTypeInBraintreeAccounts < ActiveRecord::Migration[6.1]
  def up
    change_column :braintree_accounts, :date_of_birth, :date
  end

  def down
    change_column :braintree_accounts, :date_of_birth, :string
  end
end
