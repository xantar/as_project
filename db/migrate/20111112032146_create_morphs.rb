class CreateMorphs < ActiveRecord::Migration
  def self.up
    create_table :morphs do |t|
      t.integer :dragon_id
      t.integer :morph_type_id
      t.integer :user_id
      t.timestamps
    end
  end

  def self.down
    drop_table :morphs
  end
end
