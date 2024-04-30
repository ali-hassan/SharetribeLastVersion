class AddServiceLogoStyleToCommunities < ActiveRecord::Migration[6.1]
  def change
    add_column :communities, :service_logo_style, :string, :default => "full-logo"
  end
end
