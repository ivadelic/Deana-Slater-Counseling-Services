class CreateArticlepoints < ActiveRecord::Migration
  def change
    create_table :articlepoints do |t|
      t.string :article_name
      t.string :article_link

      t.timestamps null: false
    end
  end
end
