class AddImageProcessingToListingImage < ActiveRecord::Migration[6.1]
  def change
    add_column :listing_images, :image_processing, :boolean
  end
end
