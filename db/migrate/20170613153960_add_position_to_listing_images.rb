class AddPositionToListingImages < ActiveRecord::Migration[6.1]
  def change
    add_column :listing_images, :position, :integer, default: 0
  end
end
