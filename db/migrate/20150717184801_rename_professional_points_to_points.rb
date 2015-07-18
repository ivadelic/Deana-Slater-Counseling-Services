class RenameProfessionalPointsToPoints < ActiveRecord::Migration
  def change
    rename_table :professional_points, :propoints
  end
end
