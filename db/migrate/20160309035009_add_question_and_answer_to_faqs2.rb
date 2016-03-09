class AddQuestionAndAnswerToFaqs2 < ActiveRecord::Migration
  def change
    add_column :faqs, :question, :string
    add_column :faqs, :answer, :string
    remove_column :faqs, :questions, :string
    remove_column :faqs, :answers, :string
  end
end
