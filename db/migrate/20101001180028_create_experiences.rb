class CreateExperiences < ActiveRecord::Migration
  def self.up
    create_table :experiences do |t|
      t.integer :character_id
      t.integer :exp_gained, :default => 25
      t.boolean :gains_bonus_pts, :default => false
      t.string :game_note
      t.date :game_date
      t.integer :lp_spent, :default => 0
      t.integer :ep_spent, :default => 0

      t.timestamps
    end
  end

  def self.down
    drop_table :experiences
  end
end
