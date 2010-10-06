class CreateSkills < ActiveRecord::Migration
  def self.up
    create_table :skills do |t|
      t.integer :character_id
      t.string :skill_name
      t.string :skill_subtype
      t.integer :rank
      t.integer :skillcost
      t.string :category

      t.timestamps
    end
  end

  def self.down
    drop_table :skills
  end
end
