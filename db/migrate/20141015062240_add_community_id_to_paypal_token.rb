class AddCommunityIdToPaypalToken < ActiveRecord::Migration[6.1]
  def change
    add_column :paypal_tokens, :community_id, :integer, null: false, after: :id
  end
end
