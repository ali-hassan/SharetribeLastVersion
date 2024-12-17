class AddSeachFilterIndex < ActiveRecord::Migration[6.1]
  def change
    add_index :custom_fields, :search_filter
  end
end
