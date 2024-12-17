class RemovePaymentsInUseFromCommunities < ActiveRecord::Migration[6.1]
  def up
    remove_column :communities, :payments_in_use
  end

  def down
    add_column :communities, :payments_in_use, :boolean, :default => false
  end
end
