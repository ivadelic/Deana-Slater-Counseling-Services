class About < ActiveRecord::Base
  belongs_to :admin
  has_many :professional_points
  accepts_nested_attributes_for :tasks, :reject_if => :all_blank, :allow_destroy => true
end
