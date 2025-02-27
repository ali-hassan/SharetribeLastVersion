class MigrateListingImagesToPaperClip < ActiveRecord::Migration[6.1][6.1]
  def self.up
    say "This migration will copy the existing images to paperclip."
    say "The old listing_images directory IS NOT DELETED (for backup and safety).", true
    say "So you can delete it manually later.", true
    say "Going through all #{Listing.count} listings now:"
    if  File.exist?("public/images/listing_images")
      listing_images_path = "public/images/listing_images"
    else
      listing_images_path = "public/listing_images"
    end
    
     Listing.all.each do |listing|
       if File.exist?("#{listing_images_path}/#{listing.id.to_s}.png")
         listing_image = ListingImage.new(:image => File.new("#{listing_images_path}/#{listing.id.to_s}.png"))
         listing.listing_images = [listing_image]
       end
       print "."
       STDOUT.flush
     end
     puts ""
  end

  def self.down
    raise  ActiveRecord::IrreversibleMigration, "Deletion of the paperclip image files is not implemented.\
       If you wish to rollback, you can quite safely remove this IrreversibleMigration."
  end
end
