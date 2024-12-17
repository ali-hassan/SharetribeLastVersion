class AddAttachmentFaviconToCommunities < ActiveRecord::Migration[6.1]
  def self.up
    change_table :communities do |t|
      t.attachment :favicon
    end
  end

  def self.down
    drop_attached_file :communities, :favicon
  end
end
