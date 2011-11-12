class CreateWeightTypes < ActiveRecord::Migration
  def self.up
    create_table :weight_types do |t|
      t.string :name
      t.timestamps
    end
  end

  def self.down
    drop_table :weight_types
  end
end
