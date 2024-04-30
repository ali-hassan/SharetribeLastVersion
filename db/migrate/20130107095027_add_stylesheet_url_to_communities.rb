class AddStylesheetUrlToCommunities < ActiveRecord::Migration[6.1][6.1]
  def change
    add_column :communities, :stylesheet_url, :string
  end
end
