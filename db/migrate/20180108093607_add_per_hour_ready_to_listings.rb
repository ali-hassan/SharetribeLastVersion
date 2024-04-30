class AddPerHourReadyToListings < ActiveRecord::Migration[6.1][5.1]
  def change
    add_column :listings, :per_hour_ready, :boolean, default: false
  end
end
