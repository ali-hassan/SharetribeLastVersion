class AddCustomFieldsAllowedToCommunity < ActiveRecord::Migration[6.1]
  def change
    add_column :communities, :custom_fields_allowed, :boolean, :after => :privacy_policy_change_allowed, :default => 0
  end
end
