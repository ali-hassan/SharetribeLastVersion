class AddShowFilterToCustomFields < ActiveRecord::Migration[6.1]
  def change
    add_column :custom_fields, :search_filter, :boolean, after: :sort_priority, default: false, null: false
  end
end

