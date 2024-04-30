class AddCommunityIdToEmails < ActiveRecord::Migration[6.1]
  def change
    add_column :emails, :community_id, :integer, after: :person_id
  end
end
