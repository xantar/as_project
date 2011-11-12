class CreateHatches < ActiveRecord::Migration
  def self.up
    create_table :hatches do |t|
      t.integer :clutch_id
      t.date :out_on
      t.integer :hatchlings
      t.integer :user_id
      t.timestamps
    end
  end

  def self.down
    drop_table :hatches
  end
end
