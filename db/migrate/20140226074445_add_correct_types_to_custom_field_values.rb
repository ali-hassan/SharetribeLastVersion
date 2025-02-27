class AddCorrectTypesToCustomFieldValues < ActiveRecord::Migration[6.1]
  def change
    CustomFieldValue.find_each do |custom_field_value|
      custom_field_value.update_column(:type, "#{custom_field_value.question.class.to_s}Value")
    end
  end
end
