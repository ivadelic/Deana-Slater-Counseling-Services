class CreateFaqs < ActiveRecord::Migration
  def change
    create_table :faqs do |t|
      t.string :main_title

      t.timestamps null: false
    end
  end
end
