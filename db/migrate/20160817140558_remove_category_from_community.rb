class RemoveCategoryFromCommunity < ActiveRecord::Migration[6.1][6.1]
  def change
    remove_column(:communities, :category, :string, default: "other", after: :description)
  end
end
