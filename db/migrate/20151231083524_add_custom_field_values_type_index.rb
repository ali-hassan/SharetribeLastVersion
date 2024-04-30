class AddCustomFieldValuesTypeIndex < ActiveRecord::Migration[6.1]
  def change
    add_index :custom_field_values, :type
  end
end
