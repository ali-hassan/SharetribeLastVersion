class AddTestGroupNumberToPerson < ActiveRecord::Migration[6.1][6.1]
  def self.up
    add_column :people, :test_group_number, :integer, :default => 1
    Person.all.each_with_index do |person, index|
      person.update_attribute(:test_group_number, index.modulo(4) + 1)
    end
  end

  def self.down
    remove_column :people, :test_group_number
  end
end
