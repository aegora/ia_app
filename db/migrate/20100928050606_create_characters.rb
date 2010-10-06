class CreateCharacters < ActiveRecord::Migration
  def self.up
    create_table :characters do |t|
      t.string :backstory
      t.integer :user_id
      t.string :character_name
      t.string :race
      t.string :gender, :default => 'female'
      t.string :alignment
      t.string :deity
      t.integer :multiplier_agility, :default => 3
      t.integer :multiplier_connection, :default => 3
      t.integer :multiplier_intellect, :default => 3
      t.integer :multiplier_magic, :default => 3
      t.integer :multiplier_might, :default => 3
      t.integer :loc, default => 3
      t.integer :con, :default => 10
      t.integer :halo, :default => 0
      t.integer :willpower, :default => 0
      t.integer :mana, :default => 0
      t.integer :faith, :default => 0
      t.string :primary_sphere, :default => 'arcane'

      t.timestamps
    end
    add_index :characters, :user_id
  end

  def self.down
    drop_table :characters
  end
end
