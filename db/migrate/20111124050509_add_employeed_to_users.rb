class AddEmployeedToUsers < ActiveRecord::Migration
  def change
    add_column :users, :employeed, :boolean
  end
end
