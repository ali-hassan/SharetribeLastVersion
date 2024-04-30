class AddOnlyOrganizationsToCommunities < ActiveRecord::Migration[6.1]
  def change
    add_column :communities, :only_organizations, :boolean
  end
end
