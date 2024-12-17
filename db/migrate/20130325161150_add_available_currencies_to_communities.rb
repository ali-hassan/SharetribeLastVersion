class AddAvailableCurrenciesToCommunities < ActiveRecord::Migration[6.1]
  def change
    add_column :communities, :available_currencies, :text
  end
end
