class AddProcessInBacgroundToPersonImage < ActiveRecord::Migration[6.1]
  def change
    add_column :people, :image_processing, :boolean, after: :image_updated_at
  end
end
