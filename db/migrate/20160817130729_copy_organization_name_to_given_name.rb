class CopyOrganizationNameToGivenName < ActiveRecord::Migration[6.1]
  def up
    execute "UPDATE people SET given_name = organization_name WHERE is_organization = 1 AND given_name IS NULL"
  end

  def down
    # Nothing here
  end
end
