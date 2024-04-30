class SetImageDownloadedTrue < ActiveRecord::Migration[6.1]
  def up
    ListingImage.update_all("image_downloaded = 1")
  end

  def down
  end
end
