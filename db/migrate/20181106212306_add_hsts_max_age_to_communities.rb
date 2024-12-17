class AddHstsMaxAgeToCommunities < ActiveRecord::Migration[6.1][5.1]
  def change
    add_column :communities, :hsts_max_age, :integer, default: nil, null: true
  end
end
