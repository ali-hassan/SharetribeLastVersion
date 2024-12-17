class AddOrganizationNameToPeople < ActiveRecord::Migration[6.1]
  def change
    add_column :people, :organization_name, :string
  end
end
