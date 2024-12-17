class AddDeletedToPeople < ActiveRecord::Migration[6.1]
  def change
    add_column :people, :deleted, :boolean, default: false
  end
end
