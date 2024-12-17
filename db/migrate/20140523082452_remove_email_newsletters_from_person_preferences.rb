class RemoveEmailNewslettersFromPersonPreferences < ActiveRecord::Migration[6.1]
  def up
    Person.find_each do |person|
      if person.respond_to? :preferences
        person.update_attribute(:preferences, person.preferences.except("email_newsletters"))
      end
    end
  end

  def down
  end
end
