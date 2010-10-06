class CreateBaseStats < ActiveRecord::Migration
  def self.up
    create_table :base_stats do |t|
      t.string :race
      t.integer :loc, :default => 3
      t.integer :con, :default => 10
      t.integer :halo, :default => 10
      t.integer :mana, :default => 0
      t.integer :willpower, :default => 0
      t.integer :boon_cost, :default => 0
      t.integer :multiplier_agility, :default => 3
      t.integer :multiplier_connection, :default => 3
      t.integer :multiplier_intellect, :default => 3
      t.integer :multiplier_magic, :default => 3
      t.integer :multiplier_might, :default => 3
      t.string :racial_flaws
      t.string :racial_abilities
      t.string :racial_skills
      t.integer :starting_skillpts, :default => 25
      t.integer :faith, :default => 0
      t.string :deity
      t.string :racial_multiplier_mods
      t.string :primary_sphere, :default => "arcane"

      t.timestamps
    end
  end

  def self.down
    drop_table :base_stats
  end
end
