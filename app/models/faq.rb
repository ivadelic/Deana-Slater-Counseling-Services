class Faq < ActiveRecord::Base
  belongs_to :admin
  has_many :questions
  accepts_nested_attributes_for :questions, :reject_if => :all_blank, :allow_destroy => true
end
