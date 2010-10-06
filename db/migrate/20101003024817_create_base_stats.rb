class CreateBaseStats < ActiveRecord::Migration
  def self.up
    create_table :base_stats do |t|
      t.string :race
      t.integer :loc
      t.integer :con
      t.integer :halo
      t.integer :mana
      t.integer :willpower
      t.integer :boon_cost
      t.integer :multiplier_agility
      t.integer :multiplier_connection
      t.integer :multiplier_intellect
      t.integer :multiplier_magic
      t.integer :multiplier_might
      t.string :racial_flaws
      t.string :racial_abilities
      t.string :racial_skills
      t.integer :starting_skillpts
      t.integer :faith
      t.string :deity

      t.timestamps
    end
  end

  def self.down
    drop_table :base_stats
  end
end
