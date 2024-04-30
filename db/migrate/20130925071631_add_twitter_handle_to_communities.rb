class AddTwitterHandleToCommunities < ActiveRecord::Migration[6.1][6.1]
  def change
    add_column :communities, :twitter_handle, :string
  end
end
