class CreateProfessionalPoints < ActiveRecord::Migration
  def change
    create_table :professional_points do |t|
      t.text :points
      t.belongs_to :about, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
