class AddUrlToCategories < ActiveRecord::Migration[6.1]
  def change
    add_column :categories, :url, :string, :nil => false
    add_index :categories, :url, :unique => false
  end
end