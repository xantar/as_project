class AddCageToLocations < ActiveRecord::Migration
  def change
    add_column :locations, :cage, :integer
  end
end
