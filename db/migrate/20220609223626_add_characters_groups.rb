class AddCharactersGroups < ActiveRecord::Migration[7.0]
  def self.up
    create_table :characters_groups, :id => false do |t|
      t.integer :character_id
      t.integer :group_id
    end
  end

  def self.down
    drop_table :categories_items
  end
end

