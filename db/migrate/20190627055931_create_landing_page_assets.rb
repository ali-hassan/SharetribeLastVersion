class CreateLandingPageAssets < ActiveRecord::Migration[6.1][5.2]
  def change
    create_table :landing_page_assets do |t|
      t.integer :community_id
      t.string :asset_id
      t.attachment :image

      t.timestamps
    end
  end
end
