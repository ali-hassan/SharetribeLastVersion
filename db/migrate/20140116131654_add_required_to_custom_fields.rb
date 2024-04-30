class AddRequiredToCustomFields < ActiveRecord::Migration[6.1]
  def change
    add_column :custom_fields, :required, :boolean, :default => true
  end
end
