class CreateDragons < ActiveRecord::Migration
  def self.up
    create_table :dragons do |t|
      t.string :number
      t.integer :clutch_id
      t.integer :source_id
      t.integer :group_id
      t.integer :status_id
      t.boolean :male
      t.integer :user_id
      t.timestamps
    end
  end

  def self.down
    drop_table :dragons
  end
end
