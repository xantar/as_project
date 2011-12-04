class AddFertileToStatuses < ActiveRecord::Migration
  def change
    add_column :statuses, :fertile, :boolean
  end
end
