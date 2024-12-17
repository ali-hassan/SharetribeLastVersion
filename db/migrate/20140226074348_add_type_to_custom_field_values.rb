class AddTypeToCustomFieldValues < ActiveRecord::Migration[6.1]
  def change
    add_column :custom_field_values, :type, :string
  end
end
