class CreateTreatments < ActiveRecord::Migration
  def self.up
    create_table :treatments do |t|
      t.integer :dragon_id
      t.date :treated_on
      t.integer :medication_id
      t.integer :user_id
      t.timestamps
    end
  end

  def self.down
    drop_table :treatments
  end
end
