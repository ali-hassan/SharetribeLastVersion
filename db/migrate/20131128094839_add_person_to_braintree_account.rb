class AddPersonToBraintreeAccount < ActiveRecord::Migration[6.1]
  def change
    add_column :braintree_accounts, :person_id, :string
  end
end
