class CreateClutches < ActiveRecord::Migration
  def self.up
    create_table :clutches do |t|
      t.date :laid_on
      t.integer :viable
      t.integer :questionable
      t.integer :total
      t.integer :m_dragon_id
      t.integer :f_dragon_id
      t.text :comments
      t.integer :user_id
      t.timestamps
    end
  end

  def self.down
    drop_table :clutches
  end
end
