class ChangeFeedbacksUrl < ActiveRecord::Migration[6.1][6.1]
  def up
    change_column :feedbacks, :url, :string, limit: 2048
  end

  def down
    change_column :feedbacks, :url, :string, limit: 255
  end
end
