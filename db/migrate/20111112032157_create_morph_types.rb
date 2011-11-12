class CreateMorphTypes < ActiveRecord::Migration
  def self.up
    create_table :morph_types do |t|
      t.string :name
      t.timestamps
    end
  end

  def self.down
    drop_table :morph_types
  end
end
