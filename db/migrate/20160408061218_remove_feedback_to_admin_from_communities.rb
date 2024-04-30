class RemoveFeedbackToAdminFromCommunities < ActiveRecord::Migration[6.1][6.1]
  def change
    remove_column :communities, :feedback_to_admin, :boolean, default: true, after: :real_name_required
  end
end
