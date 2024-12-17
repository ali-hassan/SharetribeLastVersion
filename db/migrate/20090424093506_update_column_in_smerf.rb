class UpdateColumnInSmerf < ActiveRecord::Migration[6.1][6.1]
  def self.up
    execute "ALTER TABLE smerf_forms MODIFY COLUMN cache LONGTEXT"
  end

  def self.down
    execute "ALTER TABLE smerf_forms MODIFY COLUMN cache TEXT"
  end
end