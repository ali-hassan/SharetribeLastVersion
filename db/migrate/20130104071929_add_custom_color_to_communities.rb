class AddCustomColorToCommunities < ActiveRecord::Migration[6.1][6.1]
  def change
    add_column :communities, :custom_color, :string
  end
end
