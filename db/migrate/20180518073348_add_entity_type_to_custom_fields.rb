class AddEntityTypeToCustomFields < ActiveRecord::Migration[6.1][5.1]
  def change
    add_column :custom_fields, :entity_type, :integer, default: 0
  end
end
