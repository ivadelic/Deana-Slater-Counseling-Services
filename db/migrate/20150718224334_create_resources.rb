class CreateResources < ActiveRecord::Migration
  def change
    create_table :resources do |t|
      t.string :main_title
      t.text :main_paragraph
      t.string :telephone_title
      t.string :website_title
      t.string :article_title

      t.timestamps null: false
    end
  end
end
