class AddListingCommentsInUseToCommunities < ActiveRecord::Migration[6.1]
  def change
    add_column :communities, :listing_comments_in_use, :boolean, :default => false
  end
end
