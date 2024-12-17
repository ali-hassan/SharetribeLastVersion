class AddPreproductionStylesheetUrlToCommunities < ActiveRecord::Migration[6.1]
  def change
    add_column :communities, :preproduction_stylesheet_url, :string
  end
end
