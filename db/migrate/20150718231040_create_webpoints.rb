class CreateWebpoints < ActiveRecord::Migration
  def change
    create_table :webpoints do |t|
      t.string :website_company
      t.string :website_link

      t.timestamps null: false
    end
  end
end
