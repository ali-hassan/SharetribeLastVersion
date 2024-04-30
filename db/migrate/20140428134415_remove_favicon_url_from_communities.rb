class RemoveFaviconUrlFromCommunities < ActiveRecord::Migration[6.1]
  def up
    remove_column :communities, :favicon_url
  end

  def down
    add_column :communities, :favicon_url, :string
  end
end
