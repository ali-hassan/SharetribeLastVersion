class AddKassiEventIdToPersonComment < ActiveRecord::Migration[6.1][6.1]
  def self.up
    add_column :person_comments, :kassi_event_id, :integer
  end

  def self.down
    remove_column :person_comments, :kassi_event_id
  end
end
