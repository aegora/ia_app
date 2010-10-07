class CreateSkillinfos < ActiveRecord::Migration
  def self.up
    create_table :skillinfos do |t|
      t.string :skill_name
      t.string :category
      t.boolean :ranked
      t.integer :skillcost
      t.string :skill_description
      t.boolean :advanced

      t.timestamps
    end
  end

  def self.down
    drop_table :skillinfos
  end
end
