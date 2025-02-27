class AllowNullCommunityAndPersonForPaypalAccount < ActiveRecord::Migration[6.1]
  def up
    change_column :paypal_accounts, :person_id, :string, :null => true
    change_column :paypal_accounts, :community_id, :int, :null => true
  end

  def down
    change_column :paypal_accounts, :person_id, :string, :null => false
    change_column :paypal_accounts, :community_id, :int, :null => false
  end
end
