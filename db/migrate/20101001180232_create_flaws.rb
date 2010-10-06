class CreateFlaws < ActiveRecord::Migration
  def self.up
    create_table :flaws do |t|
      t.integer :character_id
      t.integer :exp_value
      t.string :flaw_type

      t.timestamps
    end
  end

  def self.down
    drop_table :flaws
  end
end
