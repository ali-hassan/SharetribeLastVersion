class AddDateValueToCustomFieldValues < ActiveRecord::Migration[6.1]
  def change
    add_column :custom_field_values, :date_value, :datetime, :after => :numeric_value
  end
end
