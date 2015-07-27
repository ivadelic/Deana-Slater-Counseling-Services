class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :main_title
      t.string :name
      t.text :credits
      t.string :email
      t.string :phone_number
      t.text :description

      t.timestamps null: false
    end
  end
end
