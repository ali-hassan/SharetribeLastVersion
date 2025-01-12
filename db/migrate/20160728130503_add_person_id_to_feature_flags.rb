class AddPersonIdToFeatureFlags < ActiveRecord::Migration[6.1]
  def change
    add_column :feature_flags, :person_id, :string, default: nil, null: true, after: :community_id

    remove_index :feature_flags, :community_id
    add_index :feature_flags, [:community_id, :person_id]
  end
end
