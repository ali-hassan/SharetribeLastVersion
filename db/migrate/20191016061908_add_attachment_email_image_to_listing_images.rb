class AddAttachmentEmailImageToListingImages < ActiveRecord::Migration[6.1][5.2]
  def self.up
    # change_table :listing_images do |t|
    #   t.attachment :email_image
    # end
  end

  def self.down
    # remove_attachment :listing_images, :email_image
  end
end
