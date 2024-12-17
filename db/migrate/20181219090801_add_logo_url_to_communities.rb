class AddLogoUrlToCommunities < ActiveRecord::Migration[6.1][5.1]
  def change
    add_column :communities, :logo_link, :string
  end
end
