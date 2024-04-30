class RemoveEndOnExclusiveColumn < ActiveRecord::Migration[6.1]
  def change
    remove_column :bookings, :end_on_exclusive, :date, after: :end_on
  end
end
