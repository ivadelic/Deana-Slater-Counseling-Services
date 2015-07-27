class AddResourceIdToAllResourcePoints < ActiveRecord::Migration
  def change
    add_column :webpoints, :resource_id, :integer
    add_column :telpoints, :resource_id, :integer
    add_column :articlepoints, :resource_id, :integer
  end
end
