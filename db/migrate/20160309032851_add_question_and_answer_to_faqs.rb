class AddQuestionAndAnswerToFaqs < ActiveRecord::Migration
  def change
    add_column :faqs, :questions, :string
    add_column :faqs, :answers, :string
  end
end
