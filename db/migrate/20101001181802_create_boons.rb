class CreateBoons < ActiveRecord::Migration
  def self.up
    create_table :boons do |t|
      t.integer :howmany
      t.string :reason
      t.date :date_gained
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :boons
  end
end
