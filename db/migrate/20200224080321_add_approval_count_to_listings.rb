class AddApprovalCountToListings < ActiveRecord::Migration[6.1][5.2]
  def change
    add_column :listings, :approval_count, :integer, default: 0
  end
end
