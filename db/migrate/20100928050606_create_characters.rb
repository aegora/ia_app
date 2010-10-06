class CreateCharacters < ActiveRecord::Migration
  def self.up
    create_table :characters do |t|
      t.string :backstory
      t.integer :user_id
      t.string :character_name
      t.string :race
      t.string :gender
      t.string :alignment
      t.string :deity
      t.integer :multiplier_agility
      t.integer :multiplier_connection
      t.integer :multiplier_intellect
      t.integer :multiplier_magic
      t.integer :multiplier_might
      t.integer :loc
      t.integer :con
      t.integer :halo
      t.integer :willpower
      t.integer :mana
      t.integer :faith

      t.timestamps
    end
    add_index :characters, :user_id
  end

  def self.down
    drop_table :characters
  end
end
