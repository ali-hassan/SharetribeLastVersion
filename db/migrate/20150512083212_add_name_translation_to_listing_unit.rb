class AddNameTranslationToListingUnit < ActiveRecord::Migration[6.1]
  def change
    add_column :listing_units, :name_tr_key, :string, limit: 64, after: :translation_key
  end
end
