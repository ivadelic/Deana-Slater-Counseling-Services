class CreateTelpoints < ActiveRecord::Migration
  def change
    create_table :telpoints do |t|
      t.string :telephone_company
      t.string :telephone_number

      t.timestamps null: false
    end
  end
end
