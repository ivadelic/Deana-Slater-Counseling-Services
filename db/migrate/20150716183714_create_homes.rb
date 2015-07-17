class CreateHomes < ActiveRecord::Migration
  def change
    create_table :homes do |t|
      t.string :business_name
      t.string :background_photo

      t.timestamps null: false
    end
  end
end
