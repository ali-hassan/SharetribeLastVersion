class AddEmailFromTribeAdminsToPreferences < ActiveRecord::Migration[6.1]
  def up
    Person.find_each do |person|
      person.preferences["email_from_admins"] = true
      person.save
    end
  end
  
  def down
    Person.find_each do |person|
      person.preferences["email_from_admins"] = nil
      person.save
    end
  end
end
