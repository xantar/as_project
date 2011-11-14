class CreateMedications < ActiveRecord::Migration
  def self.up
    create_table :medications do |t|
      t.string :name
      t.text :description
      t.text :usage
      t.timestamps
    end
  end

  def self.down
    drop_table :medications
  end
end
