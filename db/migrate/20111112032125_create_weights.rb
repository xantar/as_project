class CreateWeights < ActiveRecord::Migration
  def self.up
    create_table :weights do |t|
      t.integer :dragon_id
      t.date :weighed_on
      t.integer :weight
      t.integer :weight_type_id
      t.integer :user_id
      t.timestamps
    end
  end

  def self.down
    drop_table :weights
  end
end
