class AddGoogleMapsApiKeyToCommunities < ActiveRecord::Migration[6.1]
  def change
    add_column :communities, :google_maps_key, :string, limit: 64, after: :google_analytics_key
  end
end
