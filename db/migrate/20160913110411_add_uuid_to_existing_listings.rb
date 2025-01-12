class AddUuidToExistingListings < ActiveRecord::Migration[6.1]
  def change
    execute "UPDATE listings SET uuid=UNHEX(REPLACE(UUID(), '-', '')) WHERE uuid IS NULL"
  end
end
