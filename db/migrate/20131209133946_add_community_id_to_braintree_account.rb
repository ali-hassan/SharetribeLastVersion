class AddCommunityIdToBraintreeAccount < ActiveRecord::Migration[6.1]
  def change
    add_column :braintree_accounts, :community_id, :int
  end
end
