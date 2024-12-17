class AddListingLocationRequiredToCommunities < ActiveRecord::Migration[6.1]
  def change
    add_column :communities, :listing_location_required, :boolean, default: false
  end
end
