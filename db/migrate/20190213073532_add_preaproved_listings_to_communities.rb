class AddPreaprovedListingsToCommunities < ActiveRecord::Migration[6.1][5.1]
  def change
    add_column :communities, :pre_approved_listings, :boolean, default: false
  end
end
