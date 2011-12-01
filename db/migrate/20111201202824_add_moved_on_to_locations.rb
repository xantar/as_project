class AddMovedOnToLocations < ActiveRecord::Migration
  def change
    add_column :locations, :moved_on, :date
  end
end
