class DropBadgesTable < ActiveRecord::Migration[6.1][6.1]
  def up
    drop_table :badges if ActiveRecord::Base.connection.table_exists? 'badges'
  end

  def down
  end
end