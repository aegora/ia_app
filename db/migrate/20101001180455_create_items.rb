class CreateItems < ActiveRecord::Migration
  def self.up
    create_table :items do |t|
      t.integer :character_id
      t.string :what
      t.string :description
      t.date :expiry_date
      t.integer :value
      t.integer :howmany

      t.timestamps
    end
  end

  def self.down
    drop_table :items
  end
end
