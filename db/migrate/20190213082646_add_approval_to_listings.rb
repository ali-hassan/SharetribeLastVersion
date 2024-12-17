class AddApprovalToListings < ActiveRecord::Migration[6.1][5.1]
  def change
    add_column :listings, :state, :string, default: 'approved'
    add_index :listings, :state
  end
end
