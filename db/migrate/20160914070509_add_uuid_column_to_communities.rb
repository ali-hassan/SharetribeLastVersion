class AddUuidColumnToCommunities < ActiveRecord::Migration[6.1][6.1]
  def up
    execute "ALTER TABLE communities ADD uuid BINARY(16) AFTER `id`"
  end

  def down
    remove_column :communities, :uuid
  end
end
