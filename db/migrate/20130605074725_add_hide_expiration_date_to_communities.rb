class AddHideExpirationDateToCommunities < ActiveRecord::Migration[6.1]
  def change
    add_column :communities, :hide_expiration_date, :boolean, :default => false
  end
end
