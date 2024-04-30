class AddSettingsToExistingPeople < ActiveRecord::Migration[6.1][6.1]
  def self.up
    Person.find(:all).each do |person| 
      person.settings = Settings.create
    end  
  end

  def self.down
    Person.find(:all).each do |person| 
      person.settings = nil
    end
  end
end
