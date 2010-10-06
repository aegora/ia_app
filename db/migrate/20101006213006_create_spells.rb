class CreateSpells < ActiveRecord::Migration
  def self.up
    create_table :spells do |t|
      t.integer :character_id
      t.string :spell_name
      t.string :sphere
      t.integer :level
      t.boolean :custom, :default=> false
      t.string :spell_description

      t.timestamps
    end
  end

  def self.down
    drop_table :spells
  end
end
