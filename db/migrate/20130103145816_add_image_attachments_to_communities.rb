class AddImageAttachmentsToCommunities < ActiveRecord::Migration[6.1][6.1]
  def change
    add_attachment :communities, :logo
    add_attachment :communities, :cover_photo
  end
end
