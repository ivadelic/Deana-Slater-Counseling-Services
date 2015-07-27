class RenamePointsToPoint < ActiveRecord::Migration
  def change
     rename_column :propoints, :points, :point
  end
end
