class AddPhoneNumberAndDescriptionToPeople < ActiveRecord::Migration[6.1][6.1]
  def self.up
    add_column :people, :phone_number, :string
    add_column :people, :description, :text
  end

  def self.down
    remove_column :people, :phone_number
    remove_column :people, :description
  end
end
