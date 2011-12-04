class AddTrackedToStatuses < ActiveRecord::Migration
  def change
    add_column :statuses, :tracked, :boolean
  end
end
