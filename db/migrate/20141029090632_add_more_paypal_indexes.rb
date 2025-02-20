class AddMorePaypalIndexes < ActiveRecord::Migration[6.1]
  def change
    add_index :paypal_accounts, :community_id
    add_index :paypal_accounts, :payer_id
    add_index :paypal_accounts, :person_id

    add_index :paypal_payments, :community_id
  end
end
