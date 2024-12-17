class AddDeltaToCustomFieldValue < ActiveRecord::Migration[6.1][6.1]
  def self.up
    add_column :custom_field_values, :delta, :boolean, :default => true, :null => false
  end

  def self.down
    remove_column :custom_field_values, :delta
  end
end
