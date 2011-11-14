class CreateLocations < ActiveRecord::Migration
  def self.up
    create_table :locations do |t|
      t.integer :dragon_id
      t.integer :room
      t.integer :column
      t.integer :row
      t.integer :user_id
      t.timestamps
    end
  end

  def self.down
    drop_table :locations
  end
end
