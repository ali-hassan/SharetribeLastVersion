class AddListingIdToCustomFieldOptionSelections < ActiveRecord::Migration[6.1]
  def change
    add_column :custom_field_option_selections, :listing_id, :integer, after: :custom_field_option_id, null: true
  end
end
