class AddDisplayNameToPerson < ActiveRecord::Migration[6.1]
  def change
    add_column :people, :display_name, :string, after: :family_name, null: true
  end
end
