class AddUseDomainToCommunities < ActiveRecord::Migration[6.1]
  def change
    add_column :communities, :use_domain, :boolean, default: false, null: false, after: :redirect_to_domain
  end
end
