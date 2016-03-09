class Faq < ActiveRecord::Base
  belongs_to :admin
  # add_foreign_key :questions, :faqs, on_delete: :cascade
  # accepts_nested_attributes_for :questions, :reject_if => :all_blank, :allow_destroy => true
end
