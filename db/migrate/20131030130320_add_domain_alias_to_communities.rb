class AddDomainAliasToCommunities < ActiveRecord::Migration[6.1]
  def change
    add_column :communities, :domain_alias, :string
  end
end
