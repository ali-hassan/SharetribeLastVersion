class EnableSearchFilterByDefault < ActiveRecord::Migration[6.1]
  def up
    change_column :custom_fields, :search_filter, :boolean, default: true
  end

  def down
    change_column :custom_fields, :search_filter, :boolean, default: false
  end
end
