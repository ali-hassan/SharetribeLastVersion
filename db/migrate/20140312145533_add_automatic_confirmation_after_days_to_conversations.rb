class AddAutomaticConfirmationAfterDaysToConversations < ActiveRecord::Migration[6.1]
  def change
    add_column :conversations, :automatic_confirmation_after_days, :int, :after => :last_message_at
  end
end
