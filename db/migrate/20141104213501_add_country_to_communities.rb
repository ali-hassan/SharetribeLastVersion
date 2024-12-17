class AddCountryToCommunities < ActiveRecord::Migration[6.1]
  def change
    add_column :communities, :country, :string, :after => :category
  end
end
