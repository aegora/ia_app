class CreateSpellinfos < ActiveRecord::Migration
  def self.up
    create_table :spellinfos do |t|
      t.string :spell_name
      t.string :sphere
      t.integer :level
      t.string :spell_description

      t.timestamps
    end
  end

  def self.down
    drop_table :spellinfos
  end
end
