class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :question
      t.text :answer
      t.belongs_to :faq, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
